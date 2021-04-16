import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Big Mac",
      price: 200,
      size: 12,
      description: "Pan, carne, queso, lechuga",
      image: "assets/images/mc_big_mac.png",
      color: Color(0xFF3D82AE)),

];

