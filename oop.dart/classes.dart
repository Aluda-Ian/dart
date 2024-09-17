// bluprint of creating oop
// a class defines the properties and methods that an object will have


// declearing class in dart

// using a class key word followed by the class name

class Person{
  // properties/attribute of the class
  String name;
  int age;

  // constructor (containig the attribute of the person)
  Person(this.name, this.age);

  // Mehtod to display persons details
  void displayInfo(){
    print("Name: $name, Age: $age");
  }
}


//nb class is a reserved work , class key word is declared by class key work