import { HttpClient } from "@angular/common/http";
import { inject, Service } from "@angular/core";
import { Observable } from "rxjs";
import { Tarea } from "./tarea";


@Service()
export class ClienteTareas {
    private http = inject(HttpClient);
    private url = 'http://localhost:3000/tareas';

    obtenerTareas(): Observable<Tarea[]> {
        return this.http.get<Tarea[]>(this.url)
    }
}