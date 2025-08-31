import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductDetailsWidget {
  Widget productDetailsBody(product) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Product Image
          AspectRatio(
            aspectRatio: 1,
            child: Image.asset(product["image"][0], fit: BoxFit.cover),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Name + Price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        product["name"],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "₹${product["price"]}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                /// Rating + Stock
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 20),
                    Text("${product["rating"]}"),
                    const SizedBox(width: 10),
                    Text(
                      product["inStock"] ? "In Stock" : "Out of Stock",
                      style: TextStyle(
                        color:
                            product["inStock"]
                                ? Colors.green
                                : Colors.redAccent,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                /// Description
                Text(
                  product["description"],
                  style: const TextStyle(fontSize: 14, color: Colors.black87),
                ),

                const SizedBox(height: 16),

                /// Color Options
                if (product["colors"].isNotEmpty) ...[
                  const Text(
                    "Available Colors:",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: List.generate(
                      product["colors"].length,
                      (index) => Container(
                        margin: const EdgeInsets.only(right: 8),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(product["colors"][index]),
                      ),
                    ),
                  ),
                ],

                const SizedBox(height: 16),

                /// Reviews
                const Text(
                  "Reviews",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Column(
                  children: List.generate(product["reviews"].length, (index) {
                    final review = product["reviews"][index];
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: ListTile(
                        leading: CircleAvatar(child: Text(review["user"][0])),
                        title: Text(review["user"]),
                        subtitle: Text(review["comment"]),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                            review["rating"],
                            (i) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),

                const SizedBox(height: 80),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomNavWidget() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey, width: 0.2)),
      ),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade200,
                foregroundColor: Colors.black,
              ),
              child: const Text("Add to Cart"),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: const Text("Buy Now"),
            ),
          ),
        ],
      ),
    );
  }
}
