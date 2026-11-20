import { Component, inject } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { FirstComponent } from './first-component/first-component';
import { Listado } from './listado/listado';
import { Task } from './task'
import { ClienteTareas } from './cliente-tareas';

@Component({
  // en imports se agregan los componente que vayamos integrando
  imports: [RouterOutlet, FirstComponent, Listado],
  selector: 'app-root',
  styleUrl: './app.css',
  templateUrl: './app.html',
})
export class App {
  // podemos agregar datos
  // se renderiza con el operador de *binding* {{ }}
  private title: string = "Tests de Angular";
  private client = inject(ClienteTareas);
  private tasks: Task[] = [];

  // cuando la clase termina de cargarse, llama a ngOnInit, aquí poblamos la 
  // lista de tareas, desde el servicio
  ngOnInit() {
    this.tasks = this.client.getTasks();
  }
}
