
import 'dart:io';

void main() {
  stdout.write('Hello!, We are learning List in DART');
  // List is a DS in DART which is a collection of data of same type
  // We can store data of multiple type by making an dynamic list

  // creation of list of int type
  var list1 = [10, 20, 30, 40];
  stdout.write(list1);
  list1.add(50);
  stdout.write('$list1 \n');

  // making an empty list which is of dynamic type
  var list2 = [];
  list2.add('Apple');
  stdout.write(list2);
  //* adding all item of list1 into list2 at the end
  list2.addAll(list1);
  stdout.write(list2);
  //* inserting data on specific index
  list2.insert(2, 'Sher');
  stdout.write(list2);
  // list2.insertAll(0, list1);
  // print(list2);

  // updating list
  list2[0] = 'Banana';
  stdout.write(list2);

  // replacing specific range
  // here in list 2, data from index 3 -> 5(6 is excluded) will replace with [3,4,5,6]
  list2.replaceRange(3, 6, [3, 4, 5, 6]);
  stdout.write(list2);


  // Remove Element of List
  list2.removeLast(); // remove last item
  stdout.write(list2);
  list2.remove(5);   // removing using value
  stdout.write(list2);
  list2.removeAt(1); // removing using index
  stdout.write(list2);
  list2.removeRange(1, 3); // removing using range
  stdout.write(list2);

  stdout.write('Length : ${list2.length}');
  stdout.write('Reversed : ${list2.reversed}');
  stdout.write('First Element : ${list2.first}');
  stdout.write('Last Element : ${list2.last}');
  stdout.write('Is Empty : ${list2.isEmpty}');
  stdout.write('2nd Index element : ${list2.elementAt(2)}');
}