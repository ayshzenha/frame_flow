import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final Widget lineDivider = Divider(thickness: 1, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Hey \nAysha, ",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: const Color.fromARGB(255, 111, 139, 154),
                  child: Text(
                    "A",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 239, 236, 236),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  "logged in via ayshazenha520@gmail.com",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),

            profileList(
              firstTitle: "Order",
              secondTitle:
                  "Check your orders status (track,return,cancel etc) ",
              listIcon: Icon(Icons.shopping_bag_outlined),
              clr: Colors.black,
            ),
            lineDivider,
            profileList(
              firstTitle: "Wishlist",
              secondTitle: "check your wishlist  ",
              listIcon: Icon(Icons.favorite_outline_sharp),
              clr: Colors.black,
            ),
            lineDivider,
            profileList(
              firstTitle: "Wallet",
              secondTitle: "Check your abayanest wallet balance ",
              listIcon: Icon(Icons.account_balance_wallet),
              clr: Colors.black,
            ),
            lineDivider,
            profileList(
              firstTitle: "Addresses",
              secondTitle: "Manage your saved addresses",
              listIcon: Icon(Icons.self_improvement),
              clr: Colors.black,
            ),
            lineDivider,
            profileList(
              firstTitle: "payment methods",
              secondTitle: "manage your saved payment methods ",
              listIcon: Icon(Icons.wallet_travel_sharp),
              clr: Colors.black,
            ),
            lineDivider,
            Column(
              children: [
                Container(
                  height: 50,
                  width: 100,

                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "Logout",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget profileList({
  required String firstTitle,
  required String secondTitle,
  required Icon listIcon,
  required Color clr,
}) {
  return ListTile(
    trailing: listIcon,
    title: Text(firstTitle, style: TextStyle(fontSize: 20, color: clr)),
    subtitle: Text(secondTitle, style: TextStyle(color: Colors.grey)),
  );
}
