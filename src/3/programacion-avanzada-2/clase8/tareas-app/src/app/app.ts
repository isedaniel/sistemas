import { Component, signal } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { ListadoTareas } from './listado-tareas/listado-tareas';

@Component({
  imports: [RouterOutlet, ListadoTareas],
  selector: 'app-root',
  styleUrl: './app.css',
  templateUrl: './app.html',
})
export class App {
  protected readonly title = signal('tareas-app');
}
