import { HttpClient } from '@angular/common/http';
import { inject, Service } from '@angular/core';
import { ITask } from './itask';
import { Observable } from 'rxjs';

@Service()
export class TaskApiClient {
    // inyectamos el cliente http
    private httpClient = inject(HttpClient);
    private url = "http://localhost:5268/tareas";

    // envía una petición POST a la URL con la nueva tarea
    newTask(task: ITask) {
        return this.httpClient.post<ITask>(this.url, task);
    }

    // hace una solicitud GET a la url
    getTasks(): Observable<ITask[]> {
        return this.httpClient.get<ITask[]>(this.url);
    }

    // solicitud DELETE a la url
    deleteTask(task: ITask) {
        return this.httpClient.delete<ITask>(`${this.url}/${task.id}`);
    }
}
