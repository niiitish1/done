// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController userTEC = TextEditingController();
    TextEditingController passTEC = TextEditingController();
    String errorText = "";
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: userTEC,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.keyboard),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: "Enter Username here",
                  labelText: "Username",
                ),
              ),
              TextField(
                obscureText: true,
                controller: passTEC,
                decoration: InputDecoration(
                  hintText: "Enter Password here",
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (userTEC.text.length == 0) {
                    setState(() {
                      errorText = "enter username";
                    });
                  } else if (passTEC.text.length < 6) {
                    setState(() {
                      errorText = "enter minimum 6 chracter password";
                    });
                  } else {
                    setState(() {
                      errorText = "welcome";
                    });
                    // print(
                    //     "Username: ${userTEC.text}\nPassword is: ${passTEC.text}");
                  }
                },
                child: Text("Click ME"),
              ),
              Text(errorText)
            ],
          ),
        ),
      ),
    );
  }
}
