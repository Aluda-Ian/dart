//having many classes use the same method name while redifining it 

class Animal{
  void makeSound(){
    print('All animals have sound');

  }
}
// Derive class 1
class Dog extends Animal{

  @override
  void makeSound(){
    print('woof!');
  }
}

// derive class 2

class Cat extends Animal{
  @override
  
  void makeSound(){
    print('meus');
  }
}


void main(){
  //create instanc /objects of the derived classes
  Animal  genericAnimal = Animal();
  Dog myDog = Dog();
  Cat myCat = Cat();

  //polymorhism in acction
  // the same method is callled on different types of objects
  genericAnimal.makeSound(); //Output; some generic animal sound
  myDog.makeSound(); //sound of the dog
  myCat.makeSound();//sound of the dog
}