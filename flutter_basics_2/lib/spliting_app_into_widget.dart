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
        title: const Center(child: Text('Splitting App Into Widget')),
        backgroundColor: Colors.amber,
      ),
      body: const Column(
        children: [
          CatItems(),
          Context(),
          SubCatItems(),
          BottomMenu(),
        ],
      ),
    );
  }
}

class CatItems extends StatelessWidget {
  const CatItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class Context extends StatelessWidget {
  const Context({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.orangeAccent,
        child: ListView.builder(
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.green),
              title: Text('Name'),
              subtitle: Text('Mob No.'),
              trailing: Icon(Icons.delete),
            ),
          ),
          itemCount: 8,
        ),
      ),
    );
  }
}

class SubCatItems extends StatelessWidget {
  const SubCatItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.blueGrey,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.yellow,
              ),
            ),
          ),
          itemCount: 8,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.green,
        child: GridView.count(
          crossAxisCount: 4,
          padding: const EdgeInsets.all(6),
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: [
            containerForGrid(),
            containerForGrid(),
            containerForGrid(),
            containerForGrid(),
            containerForGrid(),
          ],
        ),
      ),
    );
  }
}

Widget containerForGrid() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.brown,
      borderRadius: BorderRadius.circular(15),
    ),
  );
}