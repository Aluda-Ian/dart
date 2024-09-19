// abstraction refers to the user's interaction with just a subset of an objects characteristics and operations. to access a complicated item, absraction uses simpler high level techniques 
// simple items used to show coplexity
// keep complicated information hidden from the user 


// Abstract class Shape
abstract class Shape {
  // Abstract method (no implementation)
  double calculateArea();

  // Concrete method (with implementation)
  void printInfo() {
    print("This is a shape.");
  }
}

// Concrete class Circle extends Shape
class Circle extends Shape {
  double radius;

  // Constructor for Circle
  Circle(this.radius);

  // Override the abstract method to provide specific implementation
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

// Concrete class Rectangle extends Shape
class Rectangle extends Shape {
  double width;
  double height;

  // Constructor for Rectangle
  Rectangle(this.width, this.height);

  // Override the abstract method to provide specific implementation
  @override
  double calculateArea() {
    return width * height;
  }
}

void main() {
  // Create instances of Circle and Rectangle
  Circle circle = Circle(5.0);
  Rectangle rectangle = Rectangle(10.0, 20.0);

  // Using the common interface provided by the Shape abstract class
  circle.printInfo();  // Calls the concrete method in the abstract class
  print("Circle Area: ${circle.calculateArea()}");

  rectangle.printInfo();  // Calls the concrete method in the abstract class
  print("Rectangle Area: ${rectangle.calculateArea()}");
}