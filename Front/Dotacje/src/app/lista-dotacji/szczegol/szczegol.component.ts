import { HttpErrorResponse } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Grant } from '../models/grants';
import { grantsService } from '../servis-dotacji.service';

@Component({
  selector: 'app-szczegol',
  templateUrl: './szczegol.component.html',
  styleUrls: ['./szczegol.component.less']
})
export class GrantComponent implements OnInit {

  grant!: Grant;

  constructor(
    private servisDotacji: grantsService,
    private route: ActivatedRoute,
    private router: Router) { }

  ngOnInit(): void { this.loadGrant() }


  loadGrant() {
    const id = +this.route.snapshot.params['id'];
    this.servisDotacji.getGrant(id).subscribe((grant: Grant) =>
     { this.grant = grant },
      (error: HttpErrorResponse) => {
        alert(error.message)
      })

  }
  backToList(){    
      this.router.navigate(['/grants/all']);    
  }
  
}
