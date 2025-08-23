import 'package:flutter/material.dart';

class WebPage extends StatelessWidget {
  const WebPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffcf0),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Text(
          "jurnea",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(180, 83, 9, 1.0),
          ),
        ),
      ),
    );
  }
}
