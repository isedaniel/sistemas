import { TestBed } from '@angular/core/testing';
import { ClienteTareas } from './cliente-tareas';

describe('ClienteTareas', () => {
  let service: ClienteTareas;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(ClienteTareas);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
