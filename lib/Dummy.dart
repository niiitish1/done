// ignore_for_file: file_names

import 'package:flutter/material.dart';

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

class Rashi extends StatefulWidget {
  const Rashi({Key? key}) : super(key: key);

  @override
  _RashiState createState() => _RashiState();
}

class _RashiState extends State<Rashi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mypp"),
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 80,
            mainAxisSpacing: 100,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Image.network(images[index]);
          },
        ),
      )),
    );
  }

  List<String> images = [
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
  ];
}

class Choice {
  Choice({this.title, this.icon});
  String? title;
  IconData? icon;
}

List<Choice> choices = <Choice>[
  Choice(icon: Icons.add, title: "nitish"),
  Choice(icon: Icons.add, title: "nitish"),
  Choice(icon: Icons.add, title: "nitish"),
  Choice(icon: Icons.add, title: "nitish"),
  Choice(icon: Icons.add, title: "nitish"),
  Choice(icon: Icons.add, title: "nitish"),
  Choice(icon: Icons.add, title: "nitish"),
  Choice(icon: Icons.add, title: "nitish"),
];
