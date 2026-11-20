import { TestBed } from '@angular/core/testing';
import { TaskApiClient } from './task-api-client';

describe('TaskApiClient', () => {
  let service: TaskApiClient;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(TaskApiClient);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
