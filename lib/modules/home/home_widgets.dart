import 'package:flutter/material.dart';
import 'package:frame_flow/modules/home/home_card.dart';
import 'package:frame_flow/utils/image_utils.dart';

class HomeWidgets {
  Widget homeBodyWidget() {
    return ListView(
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
            borderRadius: BorderRadius.circular(16),
          ),
          child: ClipRect(
            child: Image.asset(Imageutil.shopping, fit: BoxFit.cover),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Popular",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeCard(cardImage: Image.asset(Imageutil.shoes, fit: BoxFit.fill)),
            HomeCard(
              cardImage: Image.asset(Imageutil.clothing, fit: BoxFit.cover),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeCard(
              cardImage: Image.asset(Imageutil.accessories, fit: BoxFit.fill),
            ),
            HomeCard(
              cardImage: Image.asset(Imageutil.electronics, fit: BoxFit.fill),
            ),
          ],
        ),
      ],
    );
  }
}
