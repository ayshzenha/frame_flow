import 'package:flutter/material.dart';
import 'package:frame_flow/imageUtil.dart';

class WebPage extends StatelessWidget {
  const WebPage({super.key});

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
      body: ListView(
        scrollDirection: Axis.vertical,

        padding: EdgeInsets.all(15.0),
        children: [
          Container(
            height: 40,
            width: 20,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.search_rounded),
                hintText: 'Search products',
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            height: 200,
            width: 50,

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRect(
              child: Image.asset(Imageutil.superSale1, fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Popular",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
