import { Component, EventEmitter, Input, Output } from '@angular/core';
import { Task } from '../task'

@Component({
  imports: [],
  selector: 'app-item-listado',
  styleUrl: './item-listado.css',
  templateUrl: './item-listado.html',
})
export class ItemListado {
  // cada item va a recibir su tarea
  @Input() task: Task = {
    id: 0,
    name: "default",
    description: "default"
  };

  // Para eliminar la tarea necesito emitir un evento, creo el objeto emisor
  // con un decorador para que el componente padre escuche
  @Output() deleteEvent = new EventEmitter<Task>();

  deleteTask() {
    this.deleteEvent.emit(this.task);
  }
}
