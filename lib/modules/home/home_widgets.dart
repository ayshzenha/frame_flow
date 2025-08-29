import 'package:flutter/material.dart';
import 'package:frame_flow/modules/home/category_card.dart';
import 'package:frame_flow/modules/home/feature_product_card.dart';

import 'package:frame_flow/utils/image_utils.dart';

class HomeWidgets {
  List<String> catogaries = [
    Imageutil.accessories,
    Imageutil.clothing,
    Imageutil.electronics,
    Imageutil.shoes,
  ];

  List<String> categoryName = [
    "Accessories",
    "Clothing",
    "electronics",
    "Shoes",
  ];
  List<String> items = [
    Imageutil.accessories,
    Imageutil.clothing,
    Imageutil.electronics,
    Imageutil.shoes,
  ];
  Widget homeBodyWidget() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
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

          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              Imageutil.shopping,
              fit: BoxFit.cover,
              height: 200,
              width: 400,
            ),
          ),

          SizedBox(height: 10),

          Text(
            "Browse categories",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: "Libertinus Serif Display",
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: catogaries.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CategoryCard(
                  imagePath: catogaries[index],
                  label: categoryName[index],
                ),
              );
            },
          ),

          SizedBox(height: 20),

          Center(
            child: Text(
              "Featured Brands".toUpperCase(),
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index1) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FeatureProductCard(
                    brandname: items[index1],
                    imagePath: items[index1],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
