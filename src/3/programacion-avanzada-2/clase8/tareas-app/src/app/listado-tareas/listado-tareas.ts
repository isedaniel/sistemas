import { Component, inject } from '@angular/core';
import { ClienteTareas } from '../cliente-tareas';
import { Tarea } from '../tarea';
import { Observable } from 'rxjs';
import { AsyncPipe } from '@angular/common';

@Component({
  imports: [AsyncPipe],
  selector: 'app-listado-tareas',
  styleUrl: './listado-tareas.css',
  templateUrl: './listado-tareas.html',
})
export class ListadoTareas {
  private cliente = inject(ClienteTareas);
  tareas$!: Observable<Tarea[]>;

  obtenerTareas() {
    this.tareas$ = this.cliente.obtenerTareas();
    console.log(this.tareas$);
  }
}
