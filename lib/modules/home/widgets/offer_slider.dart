import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OfferSlider extends StatelessWidget {
  final List<String> imageList; // dynamic list of images

  const OfferSlider({super.key, required this.imageList});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items:
          imageList.map((imagePath) {
            return Builder(
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                      height: 200,
                      width: double.infinity,
                    ),
                  ),
                );
              },
            );
          }).toList(),
      options: CarouselOptions(
        height: 300,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
