import { Component, Input } from '@angular/core';
import { Task } from '../task';
import { ItemListado } from '../item-listado/item-listado';

@Component({
  imports: [ItemListado],
  selector: 'app-listado',
  styleUrl: './listado.css',
  templateUrl: './listado.html',
})
export class Listado {
  // ts se va a quejar de que Task no está inicializada
  // podemos incializarla con un valor por defecto
  // o tasks! indica que nunca va a estar vacía para que no se queje
  @Input() tasks: Task[] = [ {id:0, name:"default", description:"default"} ];

  addTask() {
    const newTask = {
      id: 0,
      name: "Tarea nueva",
      description: "Descripción de la nueva tarea."
    }

    // agregamos la nueva tarea a nuestro array
    this.tasks.push(newTask);
  }

  deleteTask(task: Task) {
    this.tasks = this.tasks.filter(e => e.id !== task.id);
  }
}
