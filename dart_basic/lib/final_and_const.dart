
import 'dart:io';

void main() {
  //* Final variable can't change after created
  const name = 'IKRAM';
  stdout.write(name);
  // Also write as
  // final String name = 'Ikram'

  // But we can't write it as
  // var -> data van varies
  // final var name = 'IKRAM';

  // It is not mendetory to initialize final variable at the time declaration
  final dynamic age;
  age = 20;
  stdout.write(age);

  // But In case of constant variable, it is mendetory to initialize it at the time of creation
  const surname = 'Shaikh';
  stdout.write(surname);

  // const and final list
  // final
  final animal = <String>[
    'Sher',
    'Cheeta',
    'Billa',
    'Bhedya'
  ];
  //* we can add data in final list
  animal.add('Kutta');

  // const
  const fruits = [
    'Apple',
    'Mango',
    'Orange',
    'Banana'
  ];
  // We cant add data in const list
  // it will generate error which run a code
  fruits.add('Papaya');

}