// ignore_for_file: file_names
import 'package:flutter/material.dart';

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

class IndiaFlag extends StatelessWidget {
  const IndiaFlag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) /
        3;
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
          child: Column(
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
            child: Icon(
              Icons.circle,
              color: Colors.blue,
              size: 100,
            ),
          ),
          Container(
            width: width,
            height: height,
            color: Colors.green,
          ),
        ],
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

class MultiBox extends StatelessWidget {
  const MultiBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) /
        3;
    var in_height = MediaQuery.of(context).size.height / 2;
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          children: [
            /**                                 
             * First ROW
             */
            Container(
              width: width,
              height: height,
              color: Colors.orange,
              child: Row(
                children: [
                  Container(
                    width: width / 3,
                    height: height,
                    color: Colors.white,
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontSize: 54,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: width / 3,
                    height: height,
                    child: Column(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: width,
                            height: in_height,
                            color: Colors.blue,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                '2',
                                style: TextStyle(fontSize: 54),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: width,
                            height: in_height,
                            color: Colors.black,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                '3',
                                style: TextStyle(
                                    fontSize: 54, color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width / 3,
                    height: height,
                    color: Colors.purple,
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        '4',
                        style: TextStyle(fontSize: 54, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /**
             * Second ROW
             */
            Container(
              width: width,
              height: height,
              child: Row(
                children: [
                  Container(
                    width: width / 3,
                    height: height,
                    color: Colors.yellow,
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        '5',
                        style: TextStyle(fontSize: 54, color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    width: width / 3,
                    height: height,
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        '6',
                        style: TextStyle(fontSize: 54, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    width: width / 3,
                    height: height,
                    color: Colors.pinkAccent,
                    child: Column(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: width,
                            height: in_height,
                            color: Colors.blueGrey,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                '7',
                                style: TextStyle(
                                    fontSize: 54, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: width,
                            height: in_height,
                            color: Colors.limeAccent,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                '8',
                                style: TextStyle(
                                    fontSize: 54, color: Colors.black),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            /**
             * Third ROW
             */
            Container(
              width: width,
              height: height,
              child: Row(
                children: [
                  Container(
                    width: width / 3,
                    height: height,
                    child: Column(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: width,
                            height: in_height,
                            color: Colors.deepOrange,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                '9',
                                style: TextStyle(
                                    fontSize: 54, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: width,
                            height: in_height,
                            color: Colors.limeAccent,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                '10',
                                style: TextStyle(
                                    fontSize: 54, color: Colors.black),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width / 3,
                    height: height,
                    color: Colors.brown,
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        '11',
                        style: TextStyle(fontSize: 54, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    width: width / 3,
                    height: height,
                    color: Colors.green,
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        '12',
                        style: TextStyle(fontSize: 54, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
