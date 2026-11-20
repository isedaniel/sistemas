import { Component, Input } from '@angular/core';
import { ITask } from '../itask';

@Component({
  imports: [],
  selector: 'app-task-item',
  styleUrl: './task-item.css',
  templateUrl: './task-item.html',
})
export class TaskItem {
  @Input() task!: ITask;
}
