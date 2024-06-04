import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lime),
      ),
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'Rahul',
      'Akash',
      'Samad',
      'Abdul',
      'Joseph',
      'Gill',
      'Russell'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile'),
        backgroundColor: Colors.lime,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(
              '${index+1}',
              style: const TextStyle(fontSize: 25),
            ),
            title: Text(
              arrNames[index],
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            subtitle: const Text(
              'Number',
              style: TextStyle(fontSize: 20),
            ),
            trailing: const Icon(
              Icons.account_circle_rounded,
              size: 40,
            ),
            horizontalTitleGap: 20,
            contentPadding:
                const EdgeInsets.only(bottom: 15, left: 5, right: 5),
          );
        },
        scrollDirection: Axis.vertical,
        itemCount: arrNames.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 50,
            thickness: 2,
          );
        },
      ),
    );
  }
}
