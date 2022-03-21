import { Grant } from "./grants";


export class Farmer{  
idFarmer: number;
age:number=18;
area:string;
inKRUS:boolean=false;
agricultureIncome:boolean=false;
mainAnimal:string;
herdSize:number=0;
crops:Array<string>;
hasForest:boolean;
hasKids:boolean=false;
wantComitments:boolean=false;

constructor(idFarmer:number,age:number,area:string, 
    inInKRUS:boolean, agricultureIncome: boolean, mainAnimal:string, herdSize:number, 
    crops:string[],hasForest:boolean,hasKids:boolean,wantComitments:boolean){
this.idFarmer=idFarmer;
this.age=age;
this.area=area;
this.inKRUS=inInKRUS;
this.agricultureIncome=agricultureIncome;
this.mainAnimal=mainAnimal;
this.herdSize=herdSize;
this.crops=crops;
this.hasForest=hasForest;
this.hasKids=hasKids;
this.wantComitments=wantComitments
    }
}