import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const MyCalculator(title: 'QuickCalc'),
    );
  }
}

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key, required this.title});
  final String title;

  @override
  State<MyCalculator> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyCalculator> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result = 'Result?';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 412,
          height: 790,
          color: const Color.fromARGB(255, 248, 242, 197),
          child: Column(
            children: [
              Image.asset('assets/images/cals.png', height: 100,),
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Enter 1st number : ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 21),
                        controller: no1Controller,
                        keyboardType: TextInputType.number,
                        decoration: _decoration()),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Enter 2nd number : ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 21),
                        controller: no2Controller,
                        keyboardType: TextInputType.number,
                        decoration: _decoration(),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      var res = int.parse(no1Controller.text) +
                          int.parse(no2Controller.text);

                      setState(() {
                        result = '$res';
                      });
                    },
                    style: _buttonStyle(),
                    child: const Icon(CupertinoIcons.plus),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var res = int.parse(no1Controller.text) -
                          int.parse(no2Controller.text);

                      setState(() {
                        result = '$res';
                      });
                    },
                    style: _buttonStyle(),
                    child: const Icon(CupertinoIcons.minus),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var res = int.parse(no1Controller.text) *
                          int.parse(no2Controller.text);

                      setState(() {
                        result = '$res';
                      });
                    },
                    style: _buttonStyle(),
                    child: const Icon(CupertinoIcons.multiply),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var res = int.parse(no1Controller.text) /
                          int.parse(no2Controller.text);

                      setState(() {
                        result = res.toStringAsFixed(4);
                      });
                    },
                    style: _buttonStyle(),
                    child: const Icon(CupertinoIcons.divide),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Text(
                result,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

InputDecoration _decoration() {
  return InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          width: 2,
          color: Colors.red.shade400,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10));
}

ButtonStyle _buttonStyle() {
  return ButtonStyle(
    backgroundColor: WidgetStateProperty.all(Colors.yellowAccent.shade200),
  );
}
