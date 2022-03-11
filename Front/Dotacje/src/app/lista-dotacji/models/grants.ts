import { Farmer } from "./farmer";

export class Grant {
  id_grant: number;
  name: string;
  farmer: Farmer[];
  startDate: Date;
  finishDate: Date;
  maxSubsidy: number;
  description: string[];
  detailsLink: string;
  isActive:boolean;
 

  constructor(grant: Grant) {
    this.id_grant = grant.id_grant;
    this.name = grant.name;
    this.farmer = grant.farmer;
    this.startDate = grant.startDate;
    this.finishDate = grant.finishDate;
    this.maxSubsidy = grant.maxSubsidy;
    this.description = grant.description;
    this.detailsLink = grant.detailsLink;  
    this.isActive=grant.isActive;
  }

  }



  





