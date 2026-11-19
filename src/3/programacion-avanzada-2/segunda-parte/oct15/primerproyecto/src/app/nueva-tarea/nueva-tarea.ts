import { Component, EventEmitter, Output } from '@angular/core';
// importo FormsModule para escuchar el evento ngSubmit
import { FormsModule } from '@angular/forms';
import { Task } from '../task'

@Component({
  imports: [FormsModule],
  selector: 'app-nueva-tarea',
  styleUrl: './nueva-tarea.css',
  templateUrl: './nueva-tarea.html',
})
export class NuevaTarea {
  private name = "";
  private description = "";

  @Output() newTaskEvent = new EventEmitter<Task>();

  sendForm() {
    const newTask: Task = {
      name: this.name,
      description: this.description,
    }

    this.newTaskEvent.emit(newTask);
    this.name = "";
    this.description = "";
  }
}
