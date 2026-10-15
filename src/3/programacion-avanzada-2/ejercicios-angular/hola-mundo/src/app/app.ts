import { Component, signal } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { ComponenteHijo } from './componente-hijo/componente-hijo';

@Component({
  imports: [RouterOutlet, FormsModule, ComponenteHijo],
  selector: 'app-root',
  styleUrl: './app.css',
  templateUrl: './app.html',
})
export class App {
  protected readonly title = signal('hola-mundo');
  nombre: string = "Danilov";
  texto = "";
  arr = ["Dani", "Noli", "Lito"];
}
