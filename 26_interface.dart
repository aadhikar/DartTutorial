
// Objectives
// 1. Interface

void main() {

	var tv = Television();
	tv.volumeUp();
	tv.volumeDown();
}

class Remote {

	void volumeUp() {
		print("______Volume Up from Remote_______");
	}

	void volumeDown() {
		print("______Volume Down from Remote_______");
	}
}

class AnotherClass {

	void justAnotherMethod(){
		// Code
	}

}

// Here Remote and AnotherClass acts as Interface
class Television implements Remote, AnotherClass {

	void volumeUp() {
//		super.volumeUp();       // Not allowed to call super while implementing a class as Interface
		print("______Volume Up in Television_______");
	}

	void volumeDown() {
		print("______Volume Down in Television_______");
	}

	void justAnotherMethod() {
		print("Some code");
	}
}

// 1. Dart does not have any special syntax to declare INTERFACE
// 2. An INTERFACE in Dart is a normal Class
// 3. An INTERFACE is used when you need concrete implementation of all its functionswithin it's sub class
// 		-- It is mandatory to override all methods in the implementating class
// 4. You can implement multiple classes but
// 		-- You cannot extend multiple class during inheritance.