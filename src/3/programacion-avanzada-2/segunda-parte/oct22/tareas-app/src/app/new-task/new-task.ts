import { Component, EventEmitter, Output } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { ITask } from '../itask';

@Component({
  imports: [FormsModule],
  selector: 'app-new-task',
  styleUrl: './new-task.css',
  templateUrl: './new-task.html',
})
export class NewTask {
  private title: string = "";
  private description: string = "";

  @Output() newTaskEvent = new EventEmitter<ITask>;

  newTask() {
    this.newTaskEvent.emit({ title: this.title, description: this.description });
  }
}
