
import 'package:flutter/foundation.dart';
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
      title: 'Flutter Demo',
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

  var emailText = TextEditingController();
  var passText = TextEditingController();
  var phoneNum = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Text'),
        backgroundColor: const Color.fromARGB(200, 100, 178, 197),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 785,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 169, 236, 255),
                Colors.white,
                Color.fromARGB(200, 255, 187, 199),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          width: 420,
          padding: const EdgeInsets.only(top: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/login.png', width: 200),
              const Padding(
                padding: EdgeInsets.only(right: 260, top: 20),
                child: Text(
                  'EMail :',
                  style:
                      TextStyle(fontWeight: FontWeight.w500, color: Colors.blue),
                ),
              ),
               SizedBox(
                width: 320,
                child: TextField(
                  controller: emailText,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(

                    //* text visible before written something
                    hintText: 'Eg. abc@gmail.com',
                    prefixIcon: Icon(Icons.mail),
                    //* already written text from beginning and not erasable
                    // prefixText: 'Eg. abc@gmain.com',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide(
                        color: Colors.redAccent,
                        width: 2.5,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide(
                        color: Colors.black38,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 235, top: 25),
                child: Text(
                  'Phone No. :',
                  style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.blue),
                ),
              ),
              SizedBox(
                width: 320,
                child: TextField(
                  controller: phoneNum,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide(
                        color: Colors.redAccent,
                        width: 2.5,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide(
                        color: Colors.black38,
                        width: 2,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide(
                        color: Colors.black38,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 235, top: 25),
                child: Text(
                  'Password :',
                  style:
                      TextStyle(fontWeight: FontWeight.w500, color: Colors.blue),
                ),
              ),
              SizedBox(
                width: 320,
                child: TextField(
                  controller: passText,
                  //* make a text-field disable
                  // enabled: false,

                  //* change input data into dot
                  obscureText: true,

                  //* Change input data into provided character
                  obscuringCharacter: '*',

                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.black38,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide(
                        color: Colors.redAccent,
                        width: 2.5,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide(
                        color: Colors.black38,
                        width: 2,
                      ),
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide(
                        color: Colors.black38,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 25),
                width: 320,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    String uEmail = emailText.text.toString();
                    String uPass = passText.text;
                    String uNum = phoneNum.text;

                    if (kDebugMode) {
                      print('Email : $uEmail, Phone : $uNum , Password : $uPass');
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(Colors.redAccent.shade100),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have a account,'),
                  Text(
                    'Sign up now',
                    style: TextStyle(color: Colors.redAccent),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
