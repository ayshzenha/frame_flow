import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String? imagePath;
  const CategoryCard({this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.4,

      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(imagePath ?? '', fit: BoxFit.cover),
      ),
    );
  }
}
