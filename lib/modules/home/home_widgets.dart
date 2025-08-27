import 'package:flutter/material.dart';
import 'package:frame_flow/modules/home/home_card.dart';

import 'package:frame_flow/utils/image_utils.dart';

class HomeWidgets {
  List<String> catogaries = [
    Imageutil.accessories,
    Imageutil.clothing,
    Imageutil.electronics,
    Imageutil.shoes,
  ];
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
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: catogaries.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: HomeCard(imagePath: catogaries[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
