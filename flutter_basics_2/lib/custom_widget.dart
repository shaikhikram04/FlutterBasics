import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics_2/ui_helper/util.dart';
import 'package:flutter_basics_2/widgets/rounded_btn.dart';

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
        title: const Text('Custom Widget'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 130,
              child: RoundedButton(
                btnName: 'Play',
                btnIcon: const Icon(Icons.play_arrow, color: Colors.green,),
                callBack: () {
                  if (kDebugMode) {
                    print('Button CLicked');
                  }
                },
                txtStyle: mTextStyle21(Colors.black, FontWeight.w500),
              ),
            ),

            SizedBox(
              width: 145,
              child: RoundedButton(
                bgColor: Colors.blue,
                btnName: 'Login',
                btnIcon: const Icon(Icons.login, color: Colors.black,),
                callBack: () {
                  if (kDebugMode) {
                    print('Button CLicked');
                  }
                },
                txtStyle: mTextStyle21(Colors.black, FontWeight.w500),
              ),
            ),

            SizedBox(
              width: 150,
              child: RoundedButton(
                bgColor: Colors.redAccent,
                btnName: 'Logout',
                btnIcon: const Icon(Icons.logout, color: Colors.black,),
                callBack: () {
                  if (kDebugMode) {
                    print('Button CLicked');
                  }
                },
                txtStyle: mTextStyle21(Colors.black, FontWeight.w500),
              ),
            ),

            SizedBox(
              width: 180,
              child: RoundedButton(
                bgColor: Colors.greenAccent,
                btnName: 'Download',
                btnIcon: const Icon(Icons.file_download, color: Colors.black,),
                callBack: () {
                  if (kDebugMode) {
                    print('Button CLicked');
                  }
                },
                txtStyle: mTextStyle21(Colors.black, FontWeight.w500),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
