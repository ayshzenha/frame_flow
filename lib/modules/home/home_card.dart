import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  Image? cardImage;
  HomeCard({this.cardImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.4,

      child: cardImage,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
    );
  }
}
