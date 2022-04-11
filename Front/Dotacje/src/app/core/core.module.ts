import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { UserSidebarComponent } from './user-sidebar/user-sidebar.component';
import { MaterialModule } from '../material/material.module';
import { ReactiveFormsModule, FormsModule } from '@angular/forms';
import { ListComponent } from '../lista-dotacji/list/list.component';


@NgModule({
  declarations: [
    UserSidebarComponent
  ],
  exports:[UserSidebarComponent],
  imports: [
    CommonModule,
    MaterialModule,
    ReactiveFormsModule,
    FormsModule  
  ],
  providers:[ListComponent]
})
export class CoreModule { }
