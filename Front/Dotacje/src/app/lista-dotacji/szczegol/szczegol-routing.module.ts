import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { GrantComponent } from './szczegol.component';

const GRANT_ROUTS: Routes = [
  {path:'find/:id',component: GrantComponent}
];

@NgModule({
  imports: [RouterModule.forChild(GRANT_ROUTS)],
  exports: [RouterModule]
})
export class GrantRoutingModule { }
