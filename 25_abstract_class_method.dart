
// Objectives
// 1. Abstract Method
// 		-- To make method abstract, use semicolon(;) instead of method body.
// 		-- Abstract method can only exist with Abstrat Class
// 		-- You need to override Abstract methods in sub-class

// 2. Abstract Class
// 		-- Use Abstract keyword to declare Abstract Class
// 		-- Abstract class can have Abstrct Methods, Normal Metods and Instace Variables as well
// 		-- The Abstract connot be instantiated, you connot create objects

void main() {

//	var shape = Shape();        // Error. Cannot instantiate Abstract Class

	var rectangle = Rectangle();
	rectangle.draw();

	var circle = Circle();
	circle.draw();
}

abstract class Shape {

	// Define your Instance variable if needed
	int x;
	int y;

	void draw();        // Abstract Method

	void myNormalFunction() {
		// Some code
	}
}


class Rectangle extends Shape {

	void draw() {
		print("Drawing Rectangle.....");
	}
}

class Circle extends Shape {

	void draw() {
		print("Drawing Circle.....");
	}
}
