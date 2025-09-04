import 'dart:ui'; // for ImageFilter
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String? imagePath;
  final String? label;
  final bool? isBgBlur;

  const CustomCard({this.imagePath, this.label, this.isBgBlur});

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
            Visibility(
              visible: isBgBlur ?? false,
              replacement: Align(
                alignment: AlignmentGeometry.bottomCenter,
                child: Container(
                  height: 40,
                  width: 180,

                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.teal.shade300, Colors.teal.shade100],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      label ?? "",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              child: Align(
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
            ),
          ],
        ),
      ),
    );
  }
}
