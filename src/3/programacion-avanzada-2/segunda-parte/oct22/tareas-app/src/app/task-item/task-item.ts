import { Component, EventEmitter, inject, Input, Output } from '@angular/core';
import { ITask } from '../itask';
import { TaskApiClient } from '../task-api-client';

@Component({
  imports: [],
  selector: 'app-task-item',
  styleUrl: './task-item.css',
  templateUrl: './task-item.html',
})
export class TaskItem {
  @Input() task!: ITask;
  @Output() taskDeletedEvent = new EventEmitter<ITask>();
  private httpClient = inject(TaskApiClient);

  deleteTask() {
    this.httpClient.deleteTask(this.task)
      .subscribe(t => this.taskDeletedEvent.emit(t));
  }
}
