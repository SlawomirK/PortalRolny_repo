import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ListComponent } from './list/list.component';
import { SharedModule } from '../shared/shared.module';
import { MaterialModule } from '../material/material.module';
import { GrantComponent } from './szczegol/szczegol.component';
import { RouterModule } from '@angular/router';
import { HttpClientModule } from '@angular/common/http';



@NgModule({
  declarations: [ListComponent, GrantComponent],
  exports:[ListComponent,GrantComponent],
  imports: [
    RouterModule,
    CommonModule,
    SharedModule,
    MaterialModule,
    HttpClientModule
  ]
})
export class ListaDotacjiModule { }
