import { Component, Input } from '@angular/core';
import { Tarea } from '../../tarea';

@Component({
  imports: [],
  selector: 'app-listado',
  styleUrl: './listado.css',
  templateUrl: './listado.html',
})
export class Listado {

  @Input() tareas!: Tarea[];

  id: number = this.tareas[0].id;

  agregarTarea() {
    const nuevaTarea: Tarea = {
      id: this.id++,
      name: "pasear",
      descripcion: "al rrope",
    };
    this.tareas.push(nuevaTarea);
  }
}
