import { Component, inject } from '@angular/core';
import { TaskApiClient } from '../task-api-client';
import { ITask } from '../itask';
import { Observable } from 'rxjs';
import { AsyncPipe } from '@angular/common';
import { TaskItem } from '../task-item/task-item';
import { NewTask } from '../new-task/new-task';

@Component({
  // importamos AsyncPipe para trabajar con observables en el template
  imports: [AsyncPipe, TaskItem, NewTask],
  selector: 'app-task-list',
  styleUrl: './task-list.css',
  templateUrl: './task-list.html',
})
export class TaskList {
  private httpClient = inject(TaskApiClient);

  // para gestionar la asincronía usamos observables (por convención, lleva $)
  private tasks$!: Observable<ITask[]>;

  ngOnInit() {
    this.tasks$ = this.httpClient.getTasks();
  }

  taskCreated(task: ITask) {
    this.tasks$ = this.httpClient.getTasks();
  }

  taskDeleted() {
    this.tasks$ = this.httpClient.getTasks();
  }
}
