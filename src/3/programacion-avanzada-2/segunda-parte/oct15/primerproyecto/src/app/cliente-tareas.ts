import { inject, Service } from '@angular/core';
import { Task } from './task';
import { HttpClient } from '@angular/common/http';

@Service()
export class ClienteTareas {
    // por ahora, simulamos que tomamos los datos de una API web.
    private httpClient = inject(HttpClient);
    private url = "http://localhost:3000/tareas";

    getTasks() {
        return this.httpClient.get<Task[]>(this.url);
    }

    deleteTask(task: Task) {
    }

    addTask(newTask: Task) {
    }
}
