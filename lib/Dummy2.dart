import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'hello',
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

// hello nitih

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.green,
          child: Column(
            children: [
              Commonrow(Colors.red, clr3: Colors.white, clr2: Colors.amber)
              // Commonrow(Colors.red, Colors.green, Colors.blue),
              // Commonrow(Colors.blue, Colors.red, Colors.green),
              // Commonrow(Colors.green, Colors.blue, Colors.red),
              // Commonrow(Colors.blue, clr2:Colors.black12, clr3: Colors.brown)
            ],
          ),
        ),
      ),
    );
  }
}

Widget Commonrow(Color clr1,
    {Color? clr2 = Colors.blue, Color clr3 = Colors.black}) {
  return Row(
    children: [
      Container(
        width: 100,
        height: 200.00,
        color: clr1,
      ),
      Container(
        width: 100,
        height: 200,
        color: clr2,
      ),
      Container(
        width: 100,
        height: 200,
        color: clr3,
      ),
    ],
  );
}
