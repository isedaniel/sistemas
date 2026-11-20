import { Service } from '@angular/core';
import { Task } from './task';

@Service()
export class ClienteTareas {
    // por ahora, simulamos que tomamos los datos de una API web.
    private tasks: Task[] = [
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

    getTasks(): Task[] {
        return this.tasks;
    }
}
