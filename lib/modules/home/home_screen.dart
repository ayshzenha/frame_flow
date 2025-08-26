import 'package:flutter/material.dart';
import 'package:frame_flow/modules/home/home_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFDFDFD),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu_sharp)),
        title: Center(
          child: Text(
            " ShopNest",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: "Pacifico",
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: HomeWidgets().homeBodyWidget(),
    );
  }
}
