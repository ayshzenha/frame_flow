import 'package:flutter/material.dart';
import 'package:frame_flow/utils/image_utils.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),

      body: Column(
        children: [
          Container(
            height: 40,
            color: const Color.fromARGB(255, 233, 230, 230),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsetsGeometry.all(12)),
                Text(
                  "Deliver to:679345",
                  style: TextStyle(color: Colors.black),
                ),
                TextButton(
                  onPressed: () {
                    print("btn");
                  },
                  child: Text("change"),
                ),
              ],
            ),
          ),
          // 🛒 Cart Items List
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                cartItem(
                  image: Imageutil.shoes,
                  title: "Running Shoes",
                  price: 1999,
                  qty: 1,
                ),
                cartItem(
                  image: Imageutil.clothing,
                  title: "Denim Jacket",
                  price: 2499,
                  qty: 2,
                ),
              ],
            ),
          ),

          // 🧾 Cart Summary + Checkout
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, -2),
                ),
              ],
            ),
            child: Column(
              children: [
                rowText("Subtotal", "₹ 6,997"),
                const SizedBox(height: 8),
                rowText("Shipping", "₹ 99"),
                const Divider(),
                rowText("Total", "₹ 7,096", isBold: true),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff006D77),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Proceed to Checkout",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 🛍 Cart Item Widget
  Widget cartItem({
    required String image,
    required String title,
    required int price,
    required int qty,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 4)),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(image, height: 70, width: 70, fit: BoxFit.cover),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "₹ $price",
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),
          // Quantity + remove button
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.remove_circle_outline),
              ),
              Text(
                "$qty",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_circle_outline),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // 🔢 Reusable Row for summary
  Widget rowText(String left, String right, {bool isBold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          left,
          style: TextStyle(
            fontSize: 16,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          right,
          style: TextStyle(
            fontSize: 16,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            color: isBold ? Colors.black : Colors.black87,
          ),
        ),
      ],
    );
  }
}
