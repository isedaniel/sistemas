import { Component, inject, Input } from '@angular/core';
import { Task } from '../task';
import { ItemListado } from '../item-listado/item-listado';
import { ClienteTareas } from '../cliente-tareas';
import { NuevaTarea } from '../nueva-tarea/nueva-tarea';

@Component({
  imports: [ItemListado, NuevaTarea],
  selector: 'app-listado',
  styleUrl: './listado.css',
  templateUrl: './listado.html',
})
export class Listado {
  @Input() tasks: Task[] = [];
  client = inject(ClienteTareas);

  ngOnInit() {
    this.client.getTasks().subscribe(e => this.tasks = e);
  }

  newTask(task: Task) {

  }

  deleteTask(task: Task) {
    this.client.deleteTask(task);
  }

  update() {
    this.client.getTasks().subscribe(e => this.tasks = e);
  }
}
