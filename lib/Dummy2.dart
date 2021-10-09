import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'hello',
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

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
          color: Colors.white,
          child: Row(
            children: [
              Container(
                width: 100,
                height: 200.00,
                color: Colors.red,
              ),
              Container(
                width: 100,
                height: 200,
                color: Colors.yellow,
              ),
              Container(
                width: 100,
                height: 200,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
