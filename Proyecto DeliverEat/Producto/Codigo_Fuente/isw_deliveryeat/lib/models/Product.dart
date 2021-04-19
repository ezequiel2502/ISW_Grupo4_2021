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
      price: 230,
      size: 12,
      description: "Pan, 2 hamburguesas, queso chedar, lechuga, tomate, pepino y cebolla.",
      image: "assets/images/mc_big_mac.png",
      color: Color(0xFFFFE144)),

  Product(
      id: 2,
      title: "MacChiken",
      price: 150,
      size: 12,
      description: "Pan, hamburguesa de pollito, queso chedar, lechuga, tomate",
      image: "assets/images/mc_chiken.png",
      color: Color(0xFFFFE144)),

  Product(
      id: 3,
      title: "MacDobleCuarto",
      price: 180,
      size: 12,
      description: "Pan, 2 medallones de carne, queso chedar, lechuga, tomate",
      image: "assets/images/mc_doble_cuarto.png",
      color: Color(0xFFFFE144)),
];

