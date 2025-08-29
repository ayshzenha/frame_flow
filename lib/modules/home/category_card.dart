import 'dart:ui'; // for ImageFilter
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String? imagePath;
  final String? label;

  const CategoryCard({this.imagePath, this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            // Background Image (not blurred)
            Image.asset(
              imagePath ?? '',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            // Glassmorphism container only for label
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      color: Colors.white.withOpacity(0.2), // frosted glass
                      child: Text(
                        label ?? '',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
