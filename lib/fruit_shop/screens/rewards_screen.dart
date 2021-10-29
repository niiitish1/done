import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RewardsScreen extends StatefulWidget {
  const RewardsScreen({Key? key}) : super(key: key);

  @override
  _RewardsScreenState createState() => _RewardsScreenState();
}

class _RewardsScreenState extends State<RewardsScreen> {
  bool progressBar = false;
  int progressNo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reward Screen"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: "https://www.swiggy.com",
            javascriptMode: JavascriptMode.unrestricted,
            onPageStarted: (start) {
              setState(() {
                progressBar = true;
              });
            },
            onProgress: (progress) {
              setState(() {
                progressNo = progress;
              });
            },
            onPageFinished: (finish) {
              setState(() {
                progressBar = false;
              });
            },
          ),
          if (progressBar) ...[
            Center(
              child: CircularProgressIndicator(
                value: progressNo.toDouble() / 100,
                strokeWidth: 5,
              ),
            ),
            Center(
              child: Text("$progressNo"),
            )
          ],
        ],
      ),
    );
  }
}
