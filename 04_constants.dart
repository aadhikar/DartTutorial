
void main() {

	// final: can only be set once and it is initialised when accessed.
	final cityName = 'Astin';
	//	cityName = 'New York';     // Throws an error

	final String countryName = 'United States';

	// const: is implicitly final but it is compile-time constant.
	const PI = 3.14;
	const double gravity = 9.8;
}

class Circle {

	final color = 'Red';
	static const PI = 3.14; //Instance variale can be final but not const
}
