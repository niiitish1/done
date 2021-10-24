import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MultiBoxInner(),
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
                setState(() {
                  pro = pro;
                });
              },
              onPageStarted: (url) {
                setState(() {
                  isLoading = true;
                });
              },
              onPageFinished: (url) {
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

class MultiBoxInner extends StatefulWidget {
  const MultiBoxInner({Key? key}) : super(key: key);

  @override
  _MultiBoxInnerState createState() => _MultiBoxInnerState();
}

class _MultiBoxInnerState extends State<MultiBoxInner> {
  @override
  Widget build(BuildContext context) {
    var widht = MediaQuery.of(context).size.width;
    var height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.red,
            ),
            Container(
              width: widht - 50,
              height: height - 50,
              color: Colors.yellow,
            ),
            Container(
              width: widht - 100,
              height: height - 100,
              color: Colors.grey,
            ),
            Container(
              width: widht - 150,
              height: height - 150,
              color: Colors.green,
            ),
            Container(
              width: widht - 200,
              height: height - 200,
              color: Colors.black,
            ),
            Container(
              width: widht - 250,
              height: height - 250,
              color: Colors.amber,
            ),
            Container(
              width: widht - 300,
              height: height - 300,
              color: Colors.blue,
            ),
            Container(
              width: widht - 350,
              height: height - 350,
              color: Colors.indigo,
            ),
          ],
        ),
      ),
    );
  }
}
