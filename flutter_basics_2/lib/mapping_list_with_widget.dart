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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var listData = [
    {
      'name': 'Raj',
      'mob': '7894561235',
      'unread': '2',
    },
    {
      'name': 'Abdullah',
      'mob': '9621475352',
      'unread': '1',
    },
    {
      'name': 'Usman',
      'mob': '3501297434',
      'unread': '0',
    },
    {
      'name': 'Ahmad',
      'mob': '9587110325',
      'unread': '4',
    },
    {
      'name': 'Vishal',
      'mob': '8756951230',
      'unread': '2',
    },
    {
      'name': 'Junaid',
      'mob': '8562179851',
      'unread': '1',
    },
    {
      'name': 'Raju',
      'mob': '7852369410',
      'unread': '3',
    },
    {
      'name': 'Rohit',
      'mob': '9530124587',
      'unread': '7',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapping List'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xfffdc007),
              Color(0xffe3854d),
              Color(0xffda4a31),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: listData
              .map(
                (detail) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: const Color(0xffFFE5B4),
                    ),
                    height: 70,
                    child: ListTile(
                      leading: const Icon(
                        Icons.account_circle_rounded,
                        size: 40,
                        color: Color(0xffec9317),
                      ),
                      title: Text(
                        detail['name'].toString(),
                        style: const TextStyle(fontSize: 21,color: Color(0xff4D3A3A)),
                      ),
                      subtitle: Text(detail['mob'].toString(), style: const TextStyle(color:Color(0xff4D3A3A)),),
                      trailing: CircleAvatar(
                        backgroundColor: const Color(0xeff6b217),
                        maxRadius: 15,
                        child: Text(
                          detail['unread'].toString(),
                          style: const TextStyle(fontSize: 14,color: Color(0xff4D3A3A)),
                        ),
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
