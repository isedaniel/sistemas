import { ComponentFixture, TestBed } from '@angular/core/testing';
import { ItemTareas } from './item-tareas';

describe('ItemTareas', () => {
  let component: ItemTareas;
  let fixture: ComponentFixture<ItemTareas>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ItemTareas],
    }).compileComponents();

    fixture = TestBed.createComponent(ItemTareas);
    component = fixture.componentInstance;
    await fixture.whenStable();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
