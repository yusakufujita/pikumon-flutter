import 'package:flutter/material.dart';

void main() {
  runApp(Encounter());
}

class Encounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'モンスターがあらわれた！'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: Column(children: []),
      // body: Center(
      //   child: Image.asset('images/image1.png'),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 54,
              width: 295,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all(HexColor('#F31C1C')),
                ),
                onPressed: () => {print("攻撃！")},
                child: const Text('攻撃！'),
              ),
            )
          ],
        ),
      ),

      // body: Center(
      //   child: Container(
      //     alignment: Alignment.bottomCenter,
      //     width: double.infinity,
      //     height: double.infinity,
      //     color: Colors.yellow,
      //     child: ElevatedButton(
      //       child: Text("攻撃する！"),
      //       onPressed: () {},
      //     ),
      //   ),
      // ),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
