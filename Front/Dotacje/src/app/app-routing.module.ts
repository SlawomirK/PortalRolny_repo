import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ListComponent } from './lista-dotacji/list/list.component';

const routes: Routes = [
  {path:'', pathMatch:'full',redirectTo:'grants/all'},
  {path:'grants/all',component: <any> ListComponent}];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
