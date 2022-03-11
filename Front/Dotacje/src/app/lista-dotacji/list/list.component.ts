import { HttpErrorResponse } from '@angular/common/http';
import { AfterViewInit, Input, ViewChild } from '@angular/core';
import { HostListener, OnDestroy } from '@angular/core';
import { Component, OnInit } from '@angular/core';
import { CheckboxRequiredValidator } from '@angular/forms';
import { Router } from '@angular/router';
import { Subscription } from 'rxjs';
import { UserSidebarComponent } from 'src/app/core/user-sidebar/user-sidebar.component';
import { Grant } from 'src/app/lista-dotacji/models/grants';
import { ListaDotacjiModule } from '../lista-dotacji.module';
import { Farmer } from '../models/farmer';
import { grantsService } from '../servis-dotacji.service';

@Component({
  selector: 'app-list',
  templateUrl: './list.component.html',
  styleUrls: ['./list.component.less']
})
export class ListComponent implements OnInit, AfterViewInit {


  grantList: Grant[] = [];

  @ViewChild(UserSidebarComponent) farmer: any;


  private subscription: Subscription = new Subscription;

  constructor(
    private grantService: grantsService,
    private router: Router
  ) {
  }
  ngAfterViewInit(): void {
    this.loadGrantsByFarmer(this.farmer)
  }


  ngOnInit(): void {
    this.loadGrants();
  }

  loadGrantsByFarmer(far: Farmer): Grant[] {
    let filteredList: Grant[] = [];  
  
    if (this.grantList.length !== 0) {
      this.subscription = this.grantService.getGrantByFarmer(far).
        subscribe((grants: Grant[]) => {
          this.grantList = grants;
        },
          (error: HttpErrorResponse) => {
            alert(error.message)
          })
    }
    return filteredList;

  }
  // isEqual(farmer: Farmer, far: Farmer): boolean {
  //   return farmer.age >= far.age
  //     || farmer.agricultureIncome === far.agricultureIncome
  //     || farmer.area === far.area
  //     || farmer.crops.some(crop => far.crops.includes(crop)) || farmer.crops == null
  //     && farmer.hasForest === far.hasForest
  //     && farmer.hasKids === far.hasKids
  //     && farmer.herdSize >= far.herdSize || farmer.herdSize == null || farmer.herdSize.toLocaleString == undefined
  //     && farmer.inInKRUS === far.inInKRUS
  //     && farmer.mainAnimal === far.mainAnimal
  //     && farmer.wantComitments === far.wantComitments;
  // }


  loadGrants(): void {
    if (this.grantList.length == 0) {
      this.subscription = this.grantService.getGrants().
        subscribe((grants: Grant[]) => {
          this.grantList = grants;
        },
          (error: HttpErrorResponse) => {
            alert(error.message)
          })
    }
    this.subscription = this.grantService.emit.
      subscribe((farmer: Farmer) => {
        this.grantList = this.loadGrantsByFarmer(farmer)
      }, (error: HttpErrorResponse) => {
        alert(error.message)
      })
  }



  goToURL(grant: Grant, event: any): void {
    event.stopPropagation();
    window.open(grant.detailsLink, '_blank')
  }

  goToGrantDetail(grant: Grant) {
    this.router.navigate(['/grants', grant.id_grant]);
  }
  getSzczegol(id: number) {
    return this.grantList?.find(element => element.id_grant);
  }

}
