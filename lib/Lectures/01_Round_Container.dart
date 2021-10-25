// ignore_for_file: file_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: RoundContainer(),
  ));
}

class RoundContainer extends StatelessWidget {
  const RoundContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
          ),
        ),
      ),
    );
  }
}
