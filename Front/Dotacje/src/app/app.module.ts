import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { CoreModule } from './core/core.module';
import { ListaDotacjiModule } from './lista-dotacji/lista-dotacji.module';
import { MaterialModule } from './material/material.module';
import { HeaderComponent } from './shared/header/header.component';
import { SharedModule } from './shared/shared.module';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { RouterModule } from '@angular/router';
import { ListComponent } from './lista-dotacji/list/list.component';
import { GrantsRoutingModule } from './lista-dotacji/list/list-routing.module';
import { grantsService } from './lista-dotacji/servis-dotacji.service';
import { GrantRoutingModule } from './lista-dotacji/szczegol/szczegol-routing.module';


@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    BrowserModule,    
    MaterialModule,
    CoreModule ,   
    ListaDotacjiModule, 
    BrowserAnimationsModule,  
    SharedModule,
    AppRoutingModule,   
    GrantsRoutingModule,
    GrantRoutingModule,        
  ],
  providers: [grantsService],
  bootstrap: [AppComponent]
})

export class AppModule { }
