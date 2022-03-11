import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ListComponent } from '../lista-dotacji/list/list.component';
import { HeaderComponent } from './header/header.component';
import { MaterialModule } from '../material/material.module';



@NgModule({
  declarations: [   
    HeaderComponent
  ],
  imports: [
    CommonModule,
    MaterialModule
  ],
  exports:[
  HeaderComponent
]
})
export class SharedModule { }
