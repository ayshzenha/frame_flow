import 'package:frame_flow/utils/image_utils.dart';

class Constants {
  /// Categories
  static const List<Map<String, dynamic>> categories = [
    {"id": "c1", "name": "Accessories", "image": Imageutil.accessories},
    {"id": "c2", "name": "Clothing", "image": Imageutil.clothing},
    {"id": "c3", "name": "Electronics", "image": Imageutil.electronics},
    {"id": "c4", "name": "Shoes", "image": Imageutil.shoes},
  ];

  /// Products List (general store listing)
  static const List<Map<String, dynamic>> products = [
    {
      "id": "p1001",
      "name": "Leather Wallet",
      "category": "Accessories",
      "price": 1499,
      "rating": 4.5,
      "image": Imageutil.accessories,
    },
    {
      "id": "p1002",
      "name": "Denim Jacket",
      "category": "Clothing",
      "price": 2999,
      "rating": 4.8,
      "image": Imageutil.clothing,
    },
    {
      "id": "p1003",
      "name": "Wireless Earbuds",
      "category": "Electronics",
      "price": 3999,
      "rating": 4.2,
      "image": Imageutil.electronics,
    },
    {
      "id": "p1004",
      "name": "Running Shoes",
      "category": "Shoes",
      "price": 2599,
      "rating": 4.6,
      "image": Imageutil.shoes,
    },
  ];

  /// Recently viewed products
  static const List<Map<String, dynamic>> recentProducts = [
    {
      "id": "p1004",
      "name": "Running Shoes",
      "category": "Shoes",
      "price": 2599,
      "rating": 4.6,
      "image": Imageutil.electronics,
    },
    {
      "id": "p1002",
      "name": "Denim Jacket",
      "category": "Clothing",
      "price": 2999,
      "rating": 4.8,
      "image": Imageutil.clothing,
    },
    {
      "id": "p1002",
      "name": "Denim Jacket",
      "category": "Clothing",
      "price": 2999,
      "rating": 4.8,
      "image": Imageutil.accessories,
    },
    {
      "id": "p1002",
      "name": "Denim Jacket",
      "category": "Clothing",
      "price": 2999,
      "rating": 4.8,
      "image": Imageutil.shoes,
    },
    {
      "id": "p1002",
      "name": "Denim Jacket",
      "category": "Clothing",
      "price": 2999,
      "rating": 4.8,
      "image": Imageutil.shoes,
    },
     {
      "id": "p1002",
      "name": "Denim Jacket",
      "category": "Clothing",
      "price": 2999,
      "rating": 4.8,
      "image": Imageutil.shoes,
    },
     {
      "id": "p1002",
      "name": "Denim Jacket",
      "category": "Clothing",
      "price": 2999,
      "rating": 4.8,
      "image": Imageutil.shoes,
    },
     {
      "id": "p1002",
      "name": "Denim Jacket",
      "category": "Clothing",
      "price": 2999,
      "rating": 4.8,
      "image": Imageutil.shoes,
    },
     {
      "id": "p1002",
      "name": "Denim Jacket",
      "category": "Clothing",
      "price": 2999,
      "rating": 4.8,
      "image": Imageutil.shoes,
    },
     {
      "id": "p1002",
      "name": "Denim Jacket",
      "category": "Clothing",
      "price": 2999,
      "rating": 4.8,
      "image": Imageutil.shoes,
    },
     {
      "id": "p1002",
      "name": "Denim Jacket",
      "category": "Clothing",
      "price": 2999,
      "rating": 4.8,
      "image": Imageutil.shoes,
    },
     {
      "id": "p1002",
      "name": "Denim Jacket",
      "category": "Clothing",
      "price": 2999,
      "rating": 4.8,
      "image": Imageutil.shoes,
    },
     {
      "id": "p1002",
      "name": "Denim Jacket",
      "category": "Clothing",
      "price": 2999,
      "rating": 4.8,
      "image": Imageutil.shoes,
    },
  ];

  /// Product detail (single product mock)
  static const Map<String, dynamic> productDetail = {
    "id": "p1003",
    "name": "Wireless Earbuds",
    "category": "Electronics",
    "price": 3999,
    "rating": 4.2,
    "image": [Imageutil.electronics, Imageutil.electronics],
    "description":
        "High-quality wireless earbuds with noise cancellation, 24h battery life, and fast charging support.",
    "inStock": false,
    "colors": ["Black", "White", "Blue"],
    "sizes": ["s", "m", "l"],
    "reviews": [
      {"user": "Amit", "rating": 5, "comment": "Great sound quality!"},
      {"user": "Sara", "rating": 4, "comment": "Good battery, fits well."},
    ],
  };

  static const List<String> sliderImage = [
    Imageutil.shopping,
    Imageutil.shoes,
    Imageutil.clothing,
    Imageutil.electronics,
    Imageutil.accessories,
  ];
  static const List<String> underPriceList = ["99", "199", "499", "999"];
}
