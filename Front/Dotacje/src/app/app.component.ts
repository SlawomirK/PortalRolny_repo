import { Component } from '@angular/core';
import { Grant } from './lista-dotacji/models/grants';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.less']
})
export class AppComponent {
  title = 'Dotacje';

  constructor() { }

  ngOnInit(): void {
  }
}
