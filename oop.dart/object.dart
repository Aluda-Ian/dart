//objects - is an instance of a class . It represents a real-world attribute (properties ) and behaviours (methods )objects allow you to create multiple instances of a class
class Car{
  String brand;
  String model;

  Car(this.brand, this.model);

  void showDetails(){
    print('Brand:$brand, Model:$model');
  }
}
void main(){
  // creating an object of the car class
  Car myCar = Car('Toyota', 'Corola');

  //calling the method using the object

  myCar.showDetails();
}

//calass has the tow properties . brand and model
//object creation - Car nyCar = Car(Toyota, corolla ; creates an object myCar of the class car with specific values fro brand and model)

