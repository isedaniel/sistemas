import { HttpClient } from '@angular/common/http';
import { Component, inject } from '@angular/core';
import { RouterOutlet } from '@angular/router';

@Component({
  imports: [RouterOutlet],
  selector: 'app-root',
  styleUrl: './app.css',
  templateUrl: './app.html',
})
export class App {
  fileName: string = "";
  private http = inject(HttpClient);

  onFileSelected(event: Event) {
    const file = ((event.target) as HTMLInputElement).files![0];

    if (file) {
      this.fileName = file.name;
      const formData = new FormData();
      formData.append("file", file);
      this.http.post("http://localhost:5080/upload", formData).subscribe();
    }
  }
}
