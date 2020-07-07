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
      title: "Clothes",
      price: 234,
      size: 12,
      description: 'This is a Good Item',
      image: "assets/clothes.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Bag",
      price: 234,
      size: 8,
      description: 'This is a Good Item',
      image: "assets/bag.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Phone",
      price: 234,
      size: 10,
      description: 'This is a Good Item',
      image: "assets/phone.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Book",
      price: 234,
      size: 11,
      description: 'This is a Good Item',
      image: "assets/book.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Cup",
      price: 234,
      size: 12,
      description: 'This is a Good Item',
      image: "assets/cup.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Laptop",
    price: 234,
    size: 12,
    description: 'This is a Good Item',
    image: "assets/laptop.png",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 10,
    title: "Video Game",
    price: 234,
    size: 12,
    description: 'This is a Good Item',
    image: "assets/game.png",
    color: Color(0xFFAEAEAE),
  ),
];
