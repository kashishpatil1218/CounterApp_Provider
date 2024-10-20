import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF56B3BF),
        title: Text(
          "Intro screens",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
