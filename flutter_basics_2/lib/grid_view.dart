import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.limeAccent)),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
    var arrColors = [
      Colors.redAccent,
      Colors.blue,
      Colors.lightGreen,
      Colors.orangeAccent,
      Colors.yellow,
      Colors.teal,
      Colors.indigoAccent,
      Colors.brown,
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('GridView'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /**
               *! It is automatically Scrollable **/
            /**
               *? When make a grid according to no. of column then On landscape mode the size
               *? of each child will change as compare to portrait mode
               ** But if we want to give a fix size in any mode then we use GridView.extent **/
            SizedBox(
              height: 400,
              width: 800,
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 11,
                crossAxisSpacing: 11,
                padding: const EdgeInsets.all(8),
                children: [
                  Container(color: arrColors[0]),
                  Container(color: arrColors[1]),
                  Container(color: arrColors[2]),
                  Container(color: arrColors[3]),
                  Container(color: arrColors[4]),
                  Container(color: arrColors[5]),
                  Container(color: arrColors[6]),
                  Container(color: arrColors[7]),
                ],
              ),
            ),
            const Divider(
              height: 100,
              thickness: 2,
              color: Colors.black,
            ),
            SizedBox(
              height: 230,
              width: 800,
              child: GridView.extent(
                maxCrossAxisExtent: 100,
                crossAxisSpacing: 11,
                mainAxisSpacing: 11,
                padding: const EdgeInsets.all(8),
                children: [
                  Container(color: arrColors[0]),
                  Container(color: arrColors[1]),
                  Container(color: arrColors[2]),
                  Container(color: arrColors[3]),
                  Container(color: arrColors[4]),
                  Container(color: arrColors[5]),
                  Container(color: arrColors[6]),
                  Container(color: arrColors[7]),
                ],
              ),
            ),
            const Divider(
              height: 100,
              thickness: 2,
              color: Colors.black,
            ),
            SizedBox(
              height: 300,
              child: GridView.builder(
                padding: const EdgeInsets.all(8),
                itemBuilder: (context, index) {
                  return Container(
                    color: arrColors[index],
                  );
                },
                itemCount: arrColors.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 11,
                  mainAxisSpacing: 11,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
