import { Component, Input } from '@angular/core';
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
}
