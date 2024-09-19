// inheritance is the process of gaining properties . OOP allows for the inheritance of properties from one object to another

// parent class vehicle

class Vehicle {
  //properties of the vehicle 
  String brand;
  int year;
  //constructor having the vehicles's properties 
  Vehicle(this.brand, this.year);
  
  //mehtod to display the infromation of the vehicle
  void displayInfo(){
    print('Vehicle informatin is : $year $brand');
  }
}

//inheritance begins
//Derived class(inheritance from vehicle)
class Car extends Vehicle{
  //child properties
  String model;
  //child constructor 

  Car(String brand , this.model, int year) : super(brand,year);


//mehtod showing the details of the child

void displayCarInfo(){
  print("Car Information is : $year $brand $model");
}
}


void main(){

  //create an instance/object of the car class
  Car myCar = Car ('Toyota', 'Camry', 2022);
  
  //access and display information using the methods from bothe vehicle and car classes
  myCar.displayInfo();
  myCar.displayCarInfo();

}