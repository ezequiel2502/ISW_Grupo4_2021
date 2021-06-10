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
    price: 92.17,
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
    price: 70.81,
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
    title: "Test",
    price: 82,
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
    price: 82,
  ),
];

