import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { GrantComponent } from '../szczegol/szczegol.component';


const routes: Routes = [
    {path:'grants/all',component: <any> GrantComponent,    
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class GrantsRoutingModule { }
