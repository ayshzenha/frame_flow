import 'package:flutter/material.dart';
import 'package:frame_flow/modules/cart/view/cart_page.dart';
import 'package:frame_flow/modules/home/widgets/home_widgets.dart';
import 'package:frame_flow/modules/profile/view/profile_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  String appBarText = "Trending";

  final List<Widget> pages = [
    HomeWidgets().homeBodyWidget(),

    Center(child: Text("Brands Page")),
    CartPage(),
    ProfilePage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;

      switch (selectedIndex) {
        case 1:
          appBarText = "Trending";
          break;
        case 2:
          appBarText = "Shopping Bag";
          break;
        case 3:
          appBarText = "Profile";
          break;
        default:
          appBarText = "Home";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          (selectedIndex == 0)
              ? AppBar(
                centerTitle: true,
                backgroundColor: const Color(0xffFDFDFD),
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu_sharp),
                ),
                title: const Text(
                  " ShopNest",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Pacifico",
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart),
                  ),
                ],
              )
              : AppBar(
                centerTitle: true,
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                ),
                title: Text(appBarText),
              ),
      body: pages[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up_outlined),
            label: "Trending",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout),
            label: "Bag",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
