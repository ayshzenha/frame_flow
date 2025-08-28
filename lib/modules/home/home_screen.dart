import 'package:flutter/material.dart';
import 'package:frame_flow/modules/home/home_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffFDFDFD),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu_sharp)),
        title: Text(
          " ShopNest",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily: "Pacifico",
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      bottomNavigationBar: BottomBar(),
      body: HomeWidgets().homeBodyWidget(),
    );
  }
}

class BottomBar extends StatefulWidget {
  BottomBar({super.key});

  @override
  State<BottomBar> createState() => BottomBarState();
}

class BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;

  void onItemtapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemtapped,
      selectedItemColor: Colors.teal,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,

      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.percent_outlined),
          label: "Offers",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.storefront_rounded),
          label: "Brands",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: "Profile",
        ),
      ],
    );
  }
}
