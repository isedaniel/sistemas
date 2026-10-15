import { Component, Input } from '@angular/core';

@Component({
  imports: [],
  selector: 'app-componente-hijo',
  styleUrl: './componente-hijo.css',
  templateUrl: './componente-hijo.html',
})
export class ComponenteHijo {
  @Input() arr!: string[];
}
