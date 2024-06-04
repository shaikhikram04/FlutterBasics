import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade100,
        title: const Center(
            child: Text(
          'Stack And Positioned Widget',
          style: TextStyle(fontWeight: FontWeight.w500),
        )),
      ),

      /**
       *! This widget overlap multiple widget like Stack at top-left position **/
      body: SizedBox(
        width: 412,
        height: 915,
        child: Stack(
          children: [
            /**
             *! This widget is use to give the position to its child widget **/
            Positioned(
              left: 28,
              top: 85,
              child: getCard(Colors.red.shade400, 'Red'),
            ),
            Positioned(
              left: 100,
              top: 180,
              child: getCard(Colors.purple.shade300, 'Purple'),
            ),
            Positioned(
              left: 180,
              top: 280,
              child: getCard(Colors.yellow.shade700, 'Yellow'),
            ),
          ],
        ),
      ),
    );
  }
}

Widget getContainer(Color color, String colorName) {
  return Container(
    width: 200,
    height: 200,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      color: color,
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 18, top: 12),
      child: Text(
        colorName,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget getCard(Color color, String colorName) {
  return Card(
    elevation: 10,
    shadowColor: color,
    color: color,
    child: Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 18, top: 12),
        child: Text(
          colorName,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
