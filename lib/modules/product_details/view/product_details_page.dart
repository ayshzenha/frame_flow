import 'package:flutter/material.dart';
import 'package:frame_flow/modules/product_details/widgets/product_details_widget.dart';

class ProductDetailsPage extends StatelessWidget {
  final Map<String, dynamic> product;

  ProductDetailsPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product["name"]),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ProductDetailsWidget().productDetailsBody(product),

      /// Bottom Add to Cart + Buy Now
      bottomNavigationBar: ProductDetailsWidget().bottomNavWidget(),
    );
  }
}
