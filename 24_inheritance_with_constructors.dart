
// Objectives
// 1. Inheritance with Default Constructor and Parameterised Constructor
// 2. Inheritance with Named Constructor

void main() {

	var dog1 = Dog("Labrador", "Black");

	print("");

	var dog2 = Dog("Pug", "Brown");

	print("");

	var dog3 = Dog.myNamedConstructor("German Shepherd", "Black-Brown");
}

class Animal {

	String color;

	Animal(String color) {
		this.color = color;
		print("Animal class constructor");
	}

	Animal.myAnimalNamedConstrctor(String color) {
		print("Animal class named constructor");
	}
}

class Dog extends Animal {

	String breed;

	Dog(String breed, String color) : super(color) {
		this.breed = breed;
		print("Dog class constructor");
	}

	Dog.myNamedConstructor(String breed, String color) : super.myAnimalNamedConstrctor(color) {
		this.breed = breed;
		print("Dog class Named Constructor");
	}
}

// NOTE:
// 		1. By default, a constructor in a subclass calls the supersclass's no-argument constructor
// 		2. Parent class constructor is always called before child class constructor
// 		3. If default constructor is missing in Parent Class, then you must manually call call 
// 			one of the constructor in the super class