import { ComponentFixture, TestBed } from '@angular/core/testing';
import { ItemListado } from './item-listado';

describe('ItemListado', () => {
  let component: ItemListado;
  let fixture: ComponentFixture<ItemListado>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ItemListado],
    }).compileComponents();

    fixture = TestBed.createComponent(ItemListado);
    component = fixture.componentInstance;
    await fixture.whenStable();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
