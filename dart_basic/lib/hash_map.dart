
import 'dart:io';

void main() {
  stdout.write('Hello!, we are learning map in DART');

  var mapp = {
    'Akash' : '75',
    'Javed' : 84,
    8055 : 81.72,
    'Kabir' : 93
  };
  mapp['Rohit'] = 73;

  stdout.write('\n$mapp');
  stdout.write('value of key Javed : ${mapp['Javed']}');

  // Alternative option to create map
  var map1 = {};

  // var map2 = Map();

  // some properties of map
  stdout.write('Length = ${map1.length}');
  stdout.write('Is map Empty = ${mapp.isEmpty}');
  stdout.write('Is map not Empty = ${mapp.isNotEmpty}');
  stdout.write('all keys = ${mapp.keys}');
  stdout.write('all values = ${map1.values}');
  stdout.write('Is map has key Salman = ${mapp.containsKey('Salman')}');
  stdout.write('Is map has value 93 = ${mapp.containsValue(93)}');
  stdout.write('Removing element which has key 8055 = ${mapp.remove(8055)}');
  stdout.write('After remove = $mapp');

  
}