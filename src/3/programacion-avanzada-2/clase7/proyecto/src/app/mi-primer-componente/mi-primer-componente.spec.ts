import { ComponentFixture, TestBed } from '@angular/core/testing';
import { MiPrimerComponente } from './mi-primer-componente';

describe('MiPrimerComponente', () => {
  let component: MiPrimerComponente;
  let fixture: ComponentFixture<MiPrimerComponente>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [MiPrimerComponente],
    }).compileComponents();

    fixture = TestBed.createComponent(MiPrimerComponente);
    component = fixture.componentInstance;
    await fixture.whenStable();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
