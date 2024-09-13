//arrow fuctions are used to make the code shoter +> expr syntax is a shorthand for {retun expr:}

//function tha calculates simple intrest
// double calculateInterest(double principal, double rate, double time){
//   //calculation
//   double intrest = principal*rate*time/100;
//   return intrest;
// }

// void main(){
//   double principal = 5000;
//   double time = 3;
//   double rate = 3;

//   double result = calculateInterest(principal, rate, time);
//   print("the simple interst is $result");

// }


//calculation using an arrow fuction


double calculateInterest(double principal, double rate, double time) => 
principal*rate*time/100;

 void main(){
  double principal = 5000;
  double time = 3;
  double rate = 3;

  double result = calculateInterest(principal, rate, time);
  print("the simple interst is $result");

}