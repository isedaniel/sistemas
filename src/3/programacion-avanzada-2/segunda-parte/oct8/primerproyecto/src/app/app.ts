import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { FirstComponent } from './first-component/first-component';
import { Listado } from './listado/listado';
import { Task } from './task'

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
  title: string = "Tests de Angular";

  // definimos datos (que bien pueden venir de una API)
  getTasks: Task[] = [
    {
      id: 1,
      name: "cocinar",
      description: "hacer la comida"
    },
    {
      id: 2,
      name: "lavar",
      description: "limpiar las cosas"
    },
    {
      id: 3,
      name: "llenar",
      description: "la botella con agua"
    },
    {
      id: 4,
      name: "pasear al perro",
      description: "al rrope"
    }
  ];

  addTask() {
    const newTask = {
      id: 0,
      name: "Tarea nueva",
      description: "Descripción de la nueva tarea."
    }

    // agregamos la nueva tarea a nuestro array
    this.getTasks.push(newTask);
    console.log(this.getTasks)
  }
}
