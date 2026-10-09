import { Component, inject } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { Listado } from './listado/listado';
import { MiPrimerServicio } from './mi-primer-servicio';
import { Tarea } from '../tarea';

@Component({
  imports: [RouterOutlet, Listado],
  selector: 'app-root',
  styleUrl: './app.css',
  templateUrl: './app.html',
})
export class App {
  tareas!: Tarea[];

  cliente = inject(MiPrimerServicio);

  ngOnInit() {
    this.tareas = this.cliente.obtenerTareas();
  }
}
