import { Component, inject } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { Listado } from './listado/listado';
import { Task } from './task'
import { ClienteTareas } from './cliente-tareas';

@Component({
  // en imports se agregan los componente que vayamos integrando
  imports: [RouterOutlet, Listado],
  selector: 'app-root',
  styleUrl: './app.css',
  templateUrl: './app.html',
})
export class App {
  private client = inject(ClienteTareas);
  tasks: Task[] = [];

  newTask(task: Task) {
    this.tasks = [...this.tasks, task];
    this.client.addTask(task);
  }
}
