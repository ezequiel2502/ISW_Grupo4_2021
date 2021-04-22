import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title;
  final List<String> images;
  final List<Color> colors;
  final double price;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    @required this.title,
    @required this.price,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/mc_pollo.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "McPollo",
    price: 64.99,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/mc_papas.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Papas grandes",
    price: 50.5,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/mc_coca.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Coca cola",
    price: 20.20,
  ),
];

