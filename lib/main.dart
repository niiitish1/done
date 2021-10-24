import 'package:demo_1/04_ui_design.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Rashi(),
  ));
}

class Stackwala extends StatefulWidget {
  const Stackwala({Key? key}) : super(key: key);

  @override
  _StackwalaState createState() => _StackwalaState();
}

class _StackwalaState extends State<Stackwala> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool isLoading = false;
  int pro = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            WebView(
              initialUrl: "https://www.google.com",
              javascriptMode: JavascriptMode.unrestricted,
              gestureNavigationEnabled: true,
              onProgress: (pro) {
                print("progress $pro");
                setState(() {
                  pro = pro;
                });
              },
              onPageStarted: (url) {
                print("page started");
                setState(() {
                  isLoading = true;
                });
              },
              onPageFinished: (url) {
                print("pageFinished");
                setState(() {
                  isLoading = false;
                });
              },
            ),
            if (isLoading) ...[
              Center(
                child: CircularProgressIndicator(
                  value: pro.toDouble() / 100,
                ),
              ),
              Center(child: Text("$pro")),
            ] //
          ],
        ),
      ),
    );
  }
}
