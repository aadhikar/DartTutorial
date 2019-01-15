
// Objectives
// 1. Static Methods and Variables

void main() {

	var circle1 = Circle();
//	circle1.pi;     // 4 bytes

	var circle2 = Circle();
//	circle2.pi;     // 4 bytes

	// 8 bytes      // waste of extra 4 bytes

	Circle.pi;  // 4 bytes
	Circle.pi;  // No more memory will be allocated .


//	circle.calculateArea();

//	print(Circle.pi);           // Syntax to call Static Variable

//	Circle.calculateArea();     // Syntax to call Static Method
}

class Circle {

	static const double pi = 3.14;
	static int maxRadius = 5;

	String color;

	static void calculateArea() {
		print("Some code to calculate area of Circle");
//		myNormalFunction();     // Not allowed to call instance functions
//		this.color;             // You cannot use 'this' keyword and even cannot access Instance variables
	}

	void myNormalFunction() {
		calculateArea();
		this.color = "Red";
		print(pi);
		print(maxRadius);
	}
}

// 1. Static Variables are also known as Class Variables
// 2. Static Methods are also known as Class Methods
// 3. Static Variables are Lazily intialized
// 		i.e. they are not initialized untill they are used in the program
// 		So they comsume memory only when they are used
// 4. Static Methods has nothing to do with class objects or instances
// 		You cannot use 'this' keyword within a Static Method
// 5. From a Static Method
// 		You can ONLY access Static Methods and Static Variables
// 		But you cannot acces Normal Instance Variables and methods of class