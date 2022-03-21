import { EventEmitter, Output } from '@angular/core';
import { Component, OnInit } from '@angular/core';
import { FormArray, FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { MatCheckboxChange } from '@angular/material/checkbox';
import { of } from 'rxjs';
import { ListComponent } from 'src/app/lista-dotacji/list/list.component';
import { Farmer } from 'src/app/lista-dotacji/models/farmer';
import { NgForm } from '@angular/forms';
import { grantsService } from 'src/app/lista-dotacji/servis-dotacji.service';


@Component({
  selector: 'app-user-sidebar',
  templateUrl: './user-sidebar.component.html',
  styleUrls: ['./user-sidebar.component.less']
})
export class UserSidebarComponent implements OnInit {

  holdingArea!: string[];
  choosAnimal: string = '';
  numberOfAnimals = '0';
  plants: string[] = [];
  ageControl = new FormControl('', Validators.required);
  animalControl= new FormControl(1, [Validators.min(2)]);
  

  form!: FormGroup;
  ages: any[] = [];
  areas: any[] = [];
  animals: string[] = [];
  selectedPlantValue: string[] = [];
  

  constructor(private formBuilder: FormBuilder,              
              private service: grantsService) { }

  ngOnInit(): void { this.buildForm(); }

  onChangeEventFunc(plant: string, isChecked: MatCheckboxChange) {
    const plants: FormArray = this.form.get('plants') as FormArray;
    if (isChecked.checked) {
      plants.push(new FormControl(plant));
    } else {
      const index = plants.controls.findIndex(x => x.value === plant);
      plants.removeAt(index);
    }
  }

  private buildForm() {
    this.form = this.formBuilder.group({
      ages: [''],
      areas: [''],
      isInKRUS: false,
      isAgIncome: false,
      animal: [''],
      numberOfAnimals: 0,
      plants: this.formBuilder.array([]),
      hasForest: false,
      hasKids: false,
      wantComitments: false

    })
    of(this.getAge()).subscribe(ages => {
      this.ages = ages;
      this.form.controls.ages.patchValue(this.ages[0]);
    })
    of(this.getArea()).subscribe(areas => {
      this.areas = areas;
      this.form.controls.areas.patchValue(this.areas[0]);
    })
    of(this.getAnimals()).subscribe(animals => {
      if(this.isAnimalChecked){
      this.animals = animals;
      this.form.controls.animals.patchValue(this.animals[0]);}
    })
    of(this.getPlants()).subscribe(plants => {
if(this.isPlantChecked){
      this.plants = plants;
      this.form.controls.plants.patchValue(this.plants[0]);}
    })
  }

  private getAnimals(): string[] {
    return [
      'trzoda chlewana',
      'bydło',
      'drób',
      'konie',
      'owce',
      'kozy'];
  }
  private getAge(): number[] {
    return Array(47).fill(0).map((_, i) => 18 + i * 1)
  }
  private getArea(): string[] {
    return [
      'od 0,1ha do 10ha',
      'od 10ha do 30ha',
      'od 30ha do 50ha',
      'od 50ha do 300ha'];
  }
  private getPlants(): string[] {
    return [
      'zboża',
      'ziemiaki',
      'buraki cukrowe',
      'truskawki',
      'rzepak',
      'sady',
      'strączkowe',
      'motylkowe drobnonasienne',
      'użytki zielone'];//pomidory,len,konopie

  }
  get isAnimalChecked(){
    return this.form.get("animal")?.touched && this.animalControl.hasError('min');
  }
  get isPlantChecked(){
    return this.form.get("plants")?.touched&&this.animalControl.hasError('min');
  }
  createFarmer() {  
    this.form.value.age=18;
   const farmer:Farmer=
   new Farmer(
      this.form.value.id,
      this.form.get("ages")?.value,
      this.form.get("areas")?.value,     
      this.form.value.isInKRUS,
      this.form.value.isAgIncome,
      this.form.value.animal,
      this.form.value.numberOfAnimals,
      this.form.value.plants,
      this.form.value.hasForest,
      this.form.value.hasKids,
      this.form.value.wantComitments); 
      
      console.log(JSON.stringify(farmer))
  
this.service.filter(farmer);

   }
}
 
