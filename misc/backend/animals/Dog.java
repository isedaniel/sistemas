package animals;

public class Dog extends Animal {

    public static void testClassMethod() {
        IO.println("the static method in dog");
    }

    @Override
    public void testInstanceMethod() {
        IO.println("the instance method in dog");
    }

    public static void main(String[] args) {
        Dog dog = new Dog();
        Animal myAnimal = dog;

        Animal.testClassMethod();
        Dog.testClassMethod();
        myAnimal.testInstanceMethod();
    }
}
