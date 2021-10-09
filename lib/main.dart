import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "nitish",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: Container(
        color: Colors.red,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Container(
          child: Container(
            width: 200,
            height: 200,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          ),
        ),
      ),
    );
  }
}
