import 'package:flutter/material.dart';
import 'package:frame_flow/modules/home/view/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 221, 247, 249),

        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(color: Color(0xff006D77)),
        ),
      ),
    );
  }
}
