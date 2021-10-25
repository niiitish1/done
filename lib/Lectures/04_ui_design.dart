// ignore_for_file: file_names

import 'package:flutter/material.dart';

/**
 * Profile 
 * Ui
 * Desing
 */
class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                title: Text("Account"),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              buildSigupBox(),
              SizedBox(
                height: 10,
              ),
              moreDetails(Icons.shop, "My Followed Shop"),
              moreDetails(Icons.bakery_dining, "My Bank Details"),
              moreDetails(Icons.dangerous, "My Followed Shop"),
              moreDetails(Icons.dangerous, "My Followed Shop"),
              moreDetails(Icons.dangerous, "My Followed Shop"),
              moreDetails(Icons.dangerous, "My Followed Shop"),
              moreDetails(Icons.dangerous, "My Followed Shop"),
              moreDetails(Icons.dangerous, "My Followed Shop"),
              moreDetails(Icons.dangerous, "My Followed Shop"),
              moreDetails(Icons.dangerous, "My Followed Shop"),
              moreDetails(Icons.dangerous, "My Followed Shop"),
              moreDetails(Icons.dangerous, "My Followed Shop"),
              moreDetails(Icons.dangerous, "My Followed Shop"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildSigupBox() {
  return Container(
    color: Colors.white,
    child: Row(
      children: [
        Icon(
          Icons.person,
          color: Colors.grey,
          size: 70,
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: null,
              child: Text("Sign Up"),
            ),
            Text("View and update your profile details"),
          ],
        ),
      ],
    ),
  );
}

Widget moreDetails(IconData icon, String text) {
  return Container(
    color: Colors.white,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(icon),
              SizedBox(
                width: 20,
              ),
              Text(text),
            ],
          ),
        ),
        Container(
          height: 10,
          color: Colors.grey,
        )
      ],
    ),
  );
}

/**
 * Rashi 
 * Ui
 * Design 
 */
class Rashi extends StatefulWidget {
  const Rashi({Key? key}) : super(key: key);

  @override
  _RashiState createState() => _RashiState();
}

class _RashiState extends State<Rashi> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 3;
    var height = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) /
        4;
    Widget buildCol(String img, String name) {
      return Container(
        color: Colors.indigo[900],
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              img,
              width: 50,
              height: 50,
            ),
            Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildCol("assets/images/Aries.png", "मेष"),
                  buildCol("assets/images/Cancer.png", "कर्क"),
                  buildCol("assets/images/Libra.png", "तुला"),
                  buildCol("assets/images/Capricorn.png", "मकर"),
                ],
              ),
              Column(
                children: [
                  buildCol("assets/images/Taurus.png", "वृषभ"),
                  buildCol("assets/images/Leo.png", "सिंह"),
                  buildCol("assets/images/Scorpio.png", "वृश्चिक"),
                  buildCol("assets/images/Aquarius.png", "कुंभ"),
                ],
              ),
              Column(
                children: [
                  buildCol("assets/images/Gemini.png", "मिथुन"),
                  buildCol("assets/images/Virgo.png", "कन्या"),
                  buildCol("assets/images/Sagittarius.png", "धनु"),
                  buildCol("assets/images/Pisces.png", "मीन"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
