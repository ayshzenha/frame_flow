import 'package:flutter/material.dart';

class FeatureProductCard extends StatelessWidget {
  final String? imagePath;
  final String? brandname;
  FeatureProductCard({this.imagePath, this.brandname});
 

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width * .4,
          color: Colors.black,
          child: Image.asset(imagePath ?? ''),
        ),
      ],
    );
  }
}
