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
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.yellow,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Row & Column'),
      ),
      body: Container(
        height: 250,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 3.0),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 195,
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 166,
                    decoration: _boxDecoration(),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        'Strawberry Pavlova',
                        style: TextStyle(
                          color: Color.fromARGB(255, 79, 79, 79),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    width: 166,
                    decoration: _boxDecoration(),
                    child: const Text(
                      'Pavlova is a meringue-based dessert named after a Russian beeline Anna Pavlova.',
                      style: TextStyle(
                        color: Color.fromARGB(255, 79, 79, 79),
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 166,
                    decoration: _boxDecoration(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 163,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  _starImage('https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiOrh_ydUnVR1UBd2ahxfmoDv87qy-H6VRWCF3bh99mWqUIj4eWmluCEKG9-EbHnqwwGCUFpvB8bWeUGljT7JXg4lvyjH7h31T4k_kFh1tRJxpgnuqGgCdbfAkfyrDjrQ8rSbqSUJCGZyc/s1600/star+black+transparency.png'),
                                  _starImage('https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiOrh_ydUnVR1UBd2ahxfmoDv87qy-H6VRWCF3bh99mWqUIj4eWmluCEKG9-EbHnqwwGCUFpvB8bWeUGljT7JXg4lvyjH7h31T4k_kFh1tRJxpgnuqGgCdbfAkfyrDjrQ8rSbqSUJCGZyc/s1600/star+black+transparency.png'),
                                  _starImage('https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiOrh_ydUnVR1UBd2ahxfmoDv87qy-H6VRWCF3bh99mWqUIj4eWmluCEKG9-EbHnqwwGCUFpvB8bWeUGljT7JXg4lvyjH7h31T4k_kFh1tRJxpgnuqGgCdbfAkfyrDjrQ8rSbqSUJCGZyc/s1600/star+black+transparency.png'),
                                  _starImage('https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiOrh_ydUnVR1UBd2ahxfmoDv87qy-H6VRWCF3bh99mWqUIj4eWmluCEKG9-EbHnqwwGCUFpvB8bWeUGljT7JXg4lvyjH7h31T4k_kFh1tRJxpgnuqGgCdbfAkfyrDjrQ8rSbqSUJCGZyc/s1600/star+black+transparency.png'),
                                  _starImage('https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiOrh_ydUnVR1UBd2ahxfmoDv87qy-H6VRWCF3bh99mWqUIj4eWmluCEKG9-EbHnqwwGCUFpvB8bWeUGljT7JXg4lvyjH7h31T4k_kFh1tRJxpgnuqGgCdbfAkfyrDjrQ8rSbqSUJCGZyc/s1600/star+black+transparency.png'),
                                ],
                              ),
                              const Text(
                                '170 Reviews',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 79, 79, 79),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 166,
                    decoration: _boxDecoration(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _column('https://www.pikpng.com/pngl/b/159-1592241_980-x-811-2-preparation-icon-clipart.png', 15, 'PREP', '25 min'),
                        _column('https://cdn.vectorstock.com/i/1000x1000/66/45/clock-icon-transparent-background-symbol-vector-19226645.webp', 12, 'COOK', '1 hr'),
                        _column('https://p1.hiclipart.com/preview/504/870/428/food-icon-fork-icon-fast-food-icon-restaurant-fredericksburg-hotel-bar-tinto-png-clipart.jpg', 13, 'FOOD', '4-6'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.network(
                'https://assets.bonappetit.com/photos/6499cc404073b74e777f4588/1:1/w_1920,c_limit/20230505-0823-FMC-30202_RET.jpg',
                width: 200,
              ),
            ),
          ],
        ),
      ),

      // Container(
      //   width: 300,
      //   height: 400,
      //   color: CupertinoColors.tertiarySystemGroupedBackground,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       const Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           Text('R1',
      //               style: TextStyle(
      //                 fontSize: 30,
      //               )),
      //           Text(
      //             'R2',
      //             style: TextStyle(
      //               fontSize: 30,
      //             ),
      //           ),
      //           Text(
      //             'R3',
      //             style: TextStyle(
      //               fontSize: 30,
      //             ),
      //           ),
      //           Text(
      //             'R4',
      //             style: TextStyle(
      //               fontSize: 30,
      //             ),
      //           ),
      //           Text(
      //             'R5',
      //             style: TextStyle(
      //               fontSize: 30,
      //             ),
      //           ),
      //         ],
      //       ),
      //       const Text('A',
      //           style: TextStyle(
      //             fontSize: 30,
      //           )),
      //       const Text(
      //         'B',
      //         style: TextStyle(
      //           fontSize: 30,
      //         ),
      //       ),
      //       const Text(
      //         'C',
      //         style: TextStyle(
      //           fontSize: 30,
      //         ),
      //       ),
      //       const Text(
      //         'D',
      //         style: TextStyle(
      //           fontSize: 30,
      //         ),
      //       ),
      //       const Text(
      //         'E',
      //         style: TextStyle(
      //           fontSize: 30,
      //         ),
      //       ),
      //       ElevatedButton(
      //           onPressed: () {},
      //           child: const Text(
      //             'Click',
      //             style: TextStyle(fontSize: 20),
      //           ))
      //     ],
      //   ),
      // ),
    );
  }
}

Image _starImage(String src) {
  return Image.network(src, width: 10);
}

Column _column(String imgSrc, double imgWidth, String txt1, String txt2) {
  return Column(
    children: [
      Image.network(
        imgSrc,
        width: imgWidth,
      ),
       Text(
        '$txt1:',
        style: const TextStyle(
          color: Color.fromARGB(255, 79, 79, 79),
          fontSize: 11,
        ),
      ),
      Text(
        txt2,
        style: const TextStyle(
          color: Color.fromARGB(255, 79, 79, 79),
          fontSize: 11,
        ),
      ),
    ],
  );
}

BoxDecoration _boxDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.black,
      width: 1.5,
    ),
    color: const Color.fromARGB(255, 230, 230, 230),
  );
}
