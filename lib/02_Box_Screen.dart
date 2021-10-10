// ignore_for_file: file_names
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp());
}

class Box1 extends StatelessWidget {
  const Box1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          /**
         * For Column:- 
         * CrossAxisAlignment denoted X-axis
         * MainAxisAlignment denoted Y-axis
         * For Row:- 
         * CrossAxisAlignment denoted Y-axis
         * MainAxisAlignment denoted X-axis
         */
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: const [Text('h1'), Text('h2'), Text('h3')],
          ),
        ),
      ),
    );
  }
}

class Box2 extends StatelessWidget {
  const Box2({Key? key}) : super(key: key);

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
              Column(
                children: const [
                  Text('hello1'),
                  Text('hello2'),
                  Text('hello3'),
                ],
              ),
              Column(
                children: const [
                  Text('hello4'),
                  Text('hello5'),
                  Text('hello6'),
                ],
              ),
              Column(
                children: const [
                  Text('hello7'),
                  Text('hello8'),
                  Text('hello9'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Box3 extends StatelessWidget {
  const Box3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.yellow,
          child: Column(
            children: [
              Commonrow(context, Colors.red,
                  clr3: Colors.white, clr2: Colors.amber)
            ],
          ),
        ),
      ),
    );
  }
}

class Box4 extends StatelessWidget {
  const Box4({Key? key}) : super(key: key);

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

// ignore: non_constant_identifier_names
Widget Commonrow(BuildContext context, Color clr1,
    {Color? clr2 = Colors.blue, Color clr3 = Colors.black}) {
  var width = MediaQuery.of(context).size.width / 3;
  var height = MediaQuery.of(context).size.height / 3;
  return Row(
    children: [
      Container(
        width: width,
        height: height,
        color: clr1,
      ),
      Container(
        width: width,
        height: height,
        color: clr2,
      ),
      Container(
        width: width,
        height: height,
        color: clr3,
      ),
    ],
  );
}
