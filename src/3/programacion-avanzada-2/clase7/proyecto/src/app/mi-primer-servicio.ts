import { Service } from '@angular/core';
import { Tarea } from '../tarea'

@Service()
export class MiPrimerServicio {
    private tareas: Tarea[] = [
        {
            id: 1,
            name: "paser",
            descripcion: "al rrope",
        },
    ];
    obtenerTareas() {
        return this.tareas;
    }
}
