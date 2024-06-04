import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart' show DateFormat;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DatePicker'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Select Date',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? datePicked = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2022),
                  lastDate: DateTime(2024),
                );

                if (datePicked != null) {
                  if (kDebugMode) {
                    print(
                      'Selected Date : ${DateFormat('yMMMd').format(datePicked)}');
                  }
                }
              },
              child: const Text(
                'Show',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? timePicked = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    initialEntryMode: TimePickerEntryMode.dial,
                  );

                  if (timePicked != null) {
                    if (kDebugMode) {
                      print(
                        'Selected Time : ${timePicked.hour}:${timePicked.minute}');
                    }
                  }
                },
                child: const Text('Select Time'))
          ],
        ),
      ),
    );
  }
}
