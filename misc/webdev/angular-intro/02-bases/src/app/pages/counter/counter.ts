import { Component, signal } from "@angular/core";

@Component({
    templateUrl: './counter.html',
    styleUrl: './counter.css',
})
export class CounterComponent {
    counter = 10;

    counterSignal = signal(10);

    constructor() {
        setInterval(() => {
            this.counterSignal.update(curr => curr += 1)
            console.log('tick');
        }, 2000);
    }
    increaseBy(value: number) {
        this.counter += value;

        this.counterSignal.update((curr) => curr + value);
    }

    reset() {
        this.counter = 0;

        this.counterSignal.set(0);
    }
}
