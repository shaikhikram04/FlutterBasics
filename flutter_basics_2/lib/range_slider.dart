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
      home: const MyHomePage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amberAccent),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  RangeValues values = const RangeValues(1, 100);

  @override
  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Range'),
      ),
      body: Center(
        child: RangeSlider(
          min: 0,
          max: 100,
          values: values,
          labels: labels,
          divisions: 10,
          activeColor: Colors.red,
          inactiveColor: Colors.redAccent.shade100,
          onChanged: (RangeValues newValue) {
            setState(() {
              values = newValue;
            });
          },
        ),
      ),
    );
  }
}
