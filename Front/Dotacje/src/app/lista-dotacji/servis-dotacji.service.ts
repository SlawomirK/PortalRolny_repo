import { HttpClient, HttpClientModule } from '@angular/common/http';
import { EventEmitter, Injectable, Output } from '@angular/core';
import { BehaviorSubject, Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { ListComponent } from './list/list.component';
import { Farmer } from './models/farmer';
import { Grant } from './models/grants';

@Injectable({
  providedIn: 'root'
})

export class grantsService {
  
private apiUrl=environment.apiBaseUrl;


  constructor(private http:HttpClient) {}

  getGrants():Observable<Grant[]>{   
    return this.http.get<Grant[]>(`${this.apiUrl}/all`);
  }

  getGrant(id:number):Observable<Grant>{    
  return this.http.get<Grant>(`${this.apiUrl}/find/${id}`);
  }
     
  addGrant(data:Grant):Observable<Grant>
  {
    return this.http.post<Grant>(this.apiUrl,data);
  }
  updateGrant(id:number,data:Grant):Observable<Grant>{
    return this.http.put<Grant>(this.apiUrl+`/${id}`,data);
  }
  removeGrant(id:number):Observable<Grant>{
    return this.http.delete<Grant>(this.apiUrl+`/${id}`);
  }
  getGrantByFarmer(farmer:Farmer):Observable<Grant[]>{    
    return this.http.get<Grant[]>(this.apiUrl+`/find/${farmer}`);
  }


  private grants = new BehaviorSubject(this.getGrants());
  newGrants = this.grants.asObservable();

  @Output() emit: EventEmitter<Farmer> = new EventEmitter();
  filter(farmer: Farmer) {
    this.emit.emit(farmer);
    this.grants.next(this.getGrantByFarmer(farmer))
  }
}
