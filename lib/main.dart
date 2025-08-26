import 'package:flutter/material.dart';
import 'package:frame_flow/ecommerce.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WebPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 221, 247, 249),

        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(color: Color(0xff006D77)),
        ),
      ),
    );
  }
}
