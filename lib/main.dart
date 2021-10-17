import 'package:demo_1/03_Login.dart';
import 'package:demo_1/Dummy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '02_Box_Screen.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Rashi(),
  ));
  // SystemChrome.setSystemUIOverlayStyle(
  //     SystemUiOverlayStyle(systemNavigationBarColor: Colors.green));
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
