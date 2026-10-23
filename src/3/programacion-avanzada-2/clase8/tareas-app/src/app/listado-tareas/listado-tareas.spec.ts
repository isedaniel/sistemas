import { ComponentFixture, TestBed } from '@angular/core/testing';
import { ListadoTareas } from './listado-tareas';

describe('ListadoTareas', () => {
  let component: ListadoTareas;
  let fixture: ComponentFixture<ListadoTareas>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ListadoTareas],
    }).compileComponents();

    fixture = TestBed.createComponent(ListadoTareas);
    component = fixture.componentInstance;
    await fixture.whenStable();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
