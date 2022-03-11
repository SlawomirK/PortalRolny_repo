import { Grant } from "./grants";


export class Farmer{  
idFarmer: number;
age:number;
area:string;
inInKRUS:boolean;
agricultureIncome:boolean;
mainAnimal:string;
herdSize:number;
crops:Array<string>;
hasForest:boolean;
hasKids:boolean;
wantComitments:boolean;

constructor(idFarmer:number,age:number,area:string, 
    inInKRUS:boolean, agricultureIncome: boolean, mainAnimal:string, herdSize:number, 
    crops:string[],hasForest:boolean,hasKids:boolean,wantComitments:boolean){
this.idFarmer=idFarmer;
this.age=age;
this.area=area;
this.inInKRUS=inInKRUS;
this.agricultureIncome=agricultureIncome;
this.mainAnimal=mainAnimal;
this.herdSize=herdSize;
this.crops=crops;
this.hasForest=hasForest;
this.hasKids=hasKids;
this.wantComitments=wantComitments
    }
}