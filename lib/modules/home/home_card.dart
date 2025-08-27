import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String? imagePath;
  const HomeCard({this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.4,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Image.asset(imagePath ?? ''),
    );
  }
}
