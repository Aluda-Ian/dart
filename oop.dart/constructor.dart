// constructor 

//default constructor  autamaticaly created if no other constructor is specified (no parameters required)

// class MyDetails {
//   // default constructor 
//   MyDetails(){
//      //intitializatio of , if needed
//   }
// }

// void main(){
//   // creating an instance of myDetails using the Default constructor

//   var myDetails = MyDetails();
// }

//parametirzed constructor - allow you to 

//define a class named dog

class Dog{
  //declare isntance variables for name , age and breed
  String name;
  int age;
  String breed;

  // parameterized constructor for the dog class

  Dog (this.name,  this.age, this.breed);

  // Method to make the dog bark
  void bark() => print("$name barks!");

  // method tto simulate the dog eating 

  void eat() => print ('$name : eat');

  // method to seimulate sleep

  void sleep() => print('$name : sleep');


}


void main(){
  //create an istance of and object of the dog class named my dog
  Dog myDog = Dog("Buddy", 3, "chiwawa");

  //print information about the dog(name, age and breed)

   print('name:${myDog.name}, Age: ${myDog.age}, breed: ${myDog.breed}');


   //call the bark method
   myDog.bark();

   //call the eat method of the dog class
   myDog.eat();
   
   //sleep method 

   myDog.sleep();
   
}