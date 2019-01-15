
// 1. Required Parameters
// 2. Optional Parameters
//		2.1 Optional Positional Parameters
//		2.2 Optional Name Parameters
//		2.3 Optional Default Parameters

void main() {

	printCities("New York", "New Delhi", "Sydney");

	print("");

	printCountries("USA");  // You can skip the Optional Positional Parameters

}

// Required Parameters
void printCities(String name1, String name2, String name3) {

	print("Name 1 is $name1");
	print("Name 2 is $name2");
	print("Name 3 is $name3");
}

// Optional Positional Parameters
//NoteA: 1. No Required Parameters in the middle of Optional Positional Parameters
//		2. If you are using Optional Positional Parameters, Parameters end with Optional Positional Parameters
void printCountries(String name1, [String name2, String name3]) {

	print("Name 1 is $name1");
	print("Name 2 is $name2");
	print("Name 3 is $name3");
}
