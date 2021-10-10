import 'package:demo_1/Dummy2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "nitish",
    home: Flag(),
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

class Flag extends StatefulWidget {
  const Flag({Key? key}) : super(key: key);

  @override
  _FlagState createState() => _FlagState();
}

class _FlagState extends State<Flag> {
  @override
  Widget build(BuildContext context) {
    var height = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) /
        3;
    var width = MediaQuery.of(context).size.width;

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
              width: width,
              height: height,
              color: Colors.orange,
            ),
            Container(
              width: width,
              height: height,
              color: Colors.white,
            ),
            Container(
              width: width,
              height: height,
              color: Colors.green,
            )
          ],
        ),
      )),
    );
  }
}
