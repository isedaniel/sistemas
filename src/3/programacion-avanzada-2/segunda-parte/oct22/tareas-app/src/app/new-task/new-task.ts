import { Component, EventEmitter, inject, Output } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { ITask } from '../itask';
import { TaskApiClient } from '../task-api-client';

@Component({
  imports: [FormsModule],
  selector: 'app-new-task',
  styleUrl: './new-task.css',
  templateUrl: './new-task.html',
})
export class NewTask {
  private title: string = "";
  private description: string = "";
  private httpClient = inject(TaskApiClient);

  @Output() newTaskEvent = new EventEmitter<ITask>;

  newTask() {
    this.httpClient.newTask({ title: this.title, description: this.description })
      .subscribe(t => this.newTaskEvent.emit(t));
    this.title = "";
    this.description = "";
  }
}
