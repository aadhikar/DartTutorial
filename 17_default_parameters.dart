
// Optional Default Parameters

void main() {

	findVolume(10);     // Default value comes into action
	print("");

	findVolume(10, breadth: 5, height: 30);     // Overrides the old value with new one
	print("");

	findVolumeModified(10, height: 30, breadth: 5);     // Making use of Named Parameters with Default values
}


int findVolume(int length, {int breadth = 2, int height = 20}) {

	print("Lenght is $length");
	print("Breadth is $breadth");
	print("Height is $height");

	print("Volume is ${length * breadth * height}");
}

// Optional Default Parameters can be used as Named Parameter without assigning Default values
int findVolumeModified(int length, {int breadth, int height = 20}) {

	print("Lenght is $length");
	print("Breadth is $breadth");
	print("Height is $height");

	return length * breadth * height;
}