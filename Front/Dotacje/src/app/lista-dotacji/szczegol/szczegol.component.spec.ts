import { ComponentFixture, TestBed } from '@angular/core/testing';

import { GrantComponent } from './szczegol.component';

describe('SzczegolComponent', () => {
  let component: GrantComponent;
  let fixture: ComponentFixture<GrantComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ GrantComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(GrantComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
