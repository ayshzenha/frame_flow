import 'package:flutter/material.dart';
import 'package:frame_flow/modules/home/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),

      theme: ThemeData(
        fontFamily: 'Roboto',

        // Background for all screens
        scaffoldBackgroundColor: const Color(0xFFF9F9F9), // light grey
        // Color scheme
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF009688), // Teal
          secondary: const Color(0xFFF06292), // Pink (offers/CTA)
        ),

        // AppBar theme
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Color(0xFF009688), // Teal brand title
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        // Bottom navigation theme
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFF009688), // Teal active
          unselectedItemColor: Colors.grey, // Grey inactive
          showUnselectedLabels: true,
        ),

        // Buttons theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF009688),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // Card theme

        // Text theme
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Color(0xFF212121), fontSize: 16),
          bodyMedium: TextStyle(color: Color(0xFF757575), fontSize: 14),
          titleLarge: TextStyle(
            color: Color(0xFF212121),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
