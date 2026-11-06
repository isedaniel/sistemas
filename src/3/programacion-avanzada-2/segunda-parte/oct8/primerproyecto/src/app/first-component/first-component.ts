import { Component, Input } from '@angular/core';

@Component({
  imports: [],
  selector: 'app-first-component',
  styleUrl: './first-component.css',
  templateUrl: './first-component.html',
})
export class FirstComponent {
  // con el decorador @Input() decimos que name puede recibir datos.
  @Input() name:string = "Default";
}
