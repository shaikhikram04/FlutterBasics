
import 'dart:io';

void main() {
  String name = 'Abdul';
  name = 'Javed';
  stdout.write(name);

  var rollNo = 48; // now rollNo variable is int type
  // rollNo = 8.4; get error on assigning double value
  stdout.write(rollNo);

  //* here not assigning any value
  // So it is Dynamic variable it support all type of value
  Object temp;
  dynamic temp2; //* also take dynamic type

  temp = 'Thala';
  stdout.write(temp);
  temp2 = 74;
  temp = true;
  stdout.write(temp2);

  stdout.write(temp);

  // creating an object and calling method of that class
  // myClass myC = myClass();
  var myC = MyClass();
  myC.printName();

  stdout.write(myC.add(7, 58));
  stdout.write(myC.add(75, 33));
}

class MyClass {

  myClass() {
    // init block
    stdout.write('Constructor executed');
  }

  // learning about function
  void printName() {
    stdout.write('This is function');
  }

  int add(int num1, int num2) {
    int sum = num1 + num2;
    return sum;
  }

}