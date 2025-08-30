import 'package:flutter/material.dart';
import 'package:frame_flow/modules/home/custom_card.dart';
import 'package:frame_flow/modules/home/offer_slider.dart';
import 'package:frame_flow/product_details.dart';

import 'package:frame_flow/utils/constants.dart';

class HomeWidgets {
  var textw = Center(
    child: Text(
      "continue browsing these styles".toUpperCase(),
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
  );
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
          Text(
            "save & slay".toUpperCase(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3), // shadow color
                        blurRadius: 6, // soften the shadow
                        spreadRadius: 2, // extend the shadow
                        offset: Offset(2, 4), // horizontal & vertical movement
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          OfferSlider(imageList: Constants.sliderImage),

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
            itemCount: Constants.categories.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomCard(
                  imagePath: Constants.categories[index]["image"],
                  label: Constants.categories[index]["name"],
                  isBgBlur: true,
                ),
              );
            },
          ),

          SizedBox(height: 20),

          Center(
            child: Text(
              "Continue browsing these Products".toUpperCase(),
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Constants.recentProducts.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => ProductDetailsPage(
                              product: Constants.productDetail,
                            ),
                      ),
                    );
                    print(Constants.productDetail);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CustomCard(
                      label: Constants.recentProducts[index]["name"],
                      imagePath: Constants.recentProducts[index]["image"],
                      isBgBlur: false,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
