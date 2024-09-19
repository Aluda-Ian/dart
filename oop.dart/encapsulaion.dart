// data encapsulation is the process of keeping a class ; impletmentaiton details hidden from the userf through a object fuctions
// it is achieved through declaring the class properties as private by using underscore (-)
// provideing the public getter and seter methods to access and updates the value of private property

class Circle{
  // private variable
  double _radius;
  // double radius;

  //constructor 
  Circle(this._radius);

 //getter for the radius 
 double get radius => _radius;
 // setter for the radius  whith validation
 set radius(double value){
  if (value > 0){
    _radius = value;
  }else {
    print('Invalid radius. It must be greater than 0.');
  }
 }
 //method to calculate the are 
 double calculateArea(){
  return 3.14*_radius * _radius;

 }
}

void main(){
  //create an instance / object of the circle class

  Circle mycircle = Circle(5.0);
  //Access the radius using the getter

  print('initial radius of the cirle is ; ${mycircle.radius}');

  // update the radius using the setter (for updates )
  mycircle.radius = 7.0;

  // access the updated radius and calculate the area 

  print ("updated /new radius is : ${mycircle.radius}");
  print('Area is ; ${mycircle.calculateArea()}');
}

// the cirle has a private radius which is not directly accessible from the outside the classs
// the consturctor initializes the _radius 
