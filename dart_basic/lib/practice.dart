import 'dart:io';

import 'package:flutter/foundation.dart';

void main() {
  stdout.write('Welcome to Jungle');

  // stdout.write('Enter your name : '); // another way to print something
  // var name = stdin.readLineSync();
  // print('Hello, $name!');

  // creating a instance of a class Human of name Abdul
  // 'new' keyword used earlier to create an object in run time.
  // In new version no need to use 'new'.
  var abdul = Human('Abdul');
  stdout.write(abdul);
  // it create another instance of a class 'Human'.
  // However, it doesn't assign it to any variable,
  // so this instance is essentially unused.
  Human('Javed');

  // declaring a variable
  /**
  *! On printing value of 'a' it will generate error because variable 'a' is not assign
  *! it is a non-Nullable local variable which should has to assign before use
  **/
  int a;
  // print(a);

  //* it is a nullable variable which has value null
  int? b;
  stdout.write('b = $b');

  //! assigning of variable
  a = 5;
  stdout.write('a = $a');

  //* for long integer
  BigInt bigNumber;
  bigNumber = BigInt.parse('78945612561154444512');
  stdout.write(bigNumber);

  //* for fractional value
  double fractionalValue = 45.35;
  num fractionalValue2 = 78.74; //* num can store integer+fraction value
  stdout.write(fractionalValue);
  stdout.write(fractionalValue2);

  //* boolean
  bool isLogin = false;
  stdout.write(isLogin);

  if (kDebugMode) {
    print(add(b: 20, a: 10));
  }
}

class Human {
  Human(String name) {
    stdout.write('$name is Human');
  }
}

int add( {a,  b}) {
  return a + b;
}
