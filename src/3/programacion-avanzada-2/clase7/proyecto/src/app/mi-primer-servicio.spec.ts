import { TestBed } from '@angular/core/testing';
import { MiPrimerServicio } from './mi-primer-servicio';

describe('MiPrimerServicio', () => {
  let service: MiPrimerServicio;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(MiPrimerServicio);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
