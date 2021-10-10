import 'package:flutter/material.dart';

void main() {}

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
          children: [
            Text('h1'),
            Text('h2'),
            Text('h3'),
          ],
        ),
      )),
    );
  }
}

class MyApp3 extends StatelessWidget {
  const MyApp3({Key? key}) : super(key: key);

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
                children: [
                  Text('hello1'),
                  Text('hello2'),
                  Text('hello3'),
                ],
              ),
              Column(
                children: [
                  Text('hello4'),
                  Text('hello5'),
                  Text('hello6'),
                ],
              ),
              Column(
                children: [
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
