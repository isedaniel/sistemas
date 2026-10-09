import { Component, Input } from '@angular/core';

@Component({
  imports: [],
  selector: 'app-mi-primer-componente',
  styleUrl: './mi-primer-componente.css',
  templateUrl: './mi-primer-componente.html',
})
export class MiPrimerComponente {
  // Para que pueda recibir información hay que decorar la variable
  @Input()
  nombre = "Danilo";

}
