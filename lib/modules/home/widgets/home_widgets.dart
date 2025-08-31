import 'package:flutter/material.dart';
import 'package:frame_flow/widgets/custom_card.dart';
import 'package:frame_flow/modules/home/widgets/offer_slider.dart';
import 'package:frame_flow/modules/product_details/view/product_details_page.dart';

import 'package:frame_flow/utils/constants.dart';

class HomeWidgets {
  Widget offerCard({required String underPrice}) {
    return Container(
      height: 80,
      width: 90,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 235, 91, 139),
        borderRadius: BorderRadius.circular(12), // rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), // shadow color
            blurRadius: 6, // soften the shadow
            spreadRadius: 2, // extend the shadow
            offset: const Offset(2, 4), // horizontal & vertical movement
          ),
        ],
      ),
      alignment: Alignment.center, // centers text inside
      child: Text(
        'Under\n ₹${underPrice}',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white, // better contrast on red
        ),
      ),
    );
  }

  Widget homeBodyWidget() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
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

          SizedBox(height: 15),

          OfferSlider(imageList: Constants.sliderImage),
          SizedBox(height: 20),
          saveSlayWidget(),
          SizedBox(height: 20),

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

  Widget saveSlayWidget() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "save & slay".toUpperCase(),
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            Constants.underPriceList.length,
            (index) => offerCard(underPrice: Constants.underPriceList[index]),
          ),
        ),
      ],
    );
  }
}
