import 'package:flutter/material.dart';

class Product {
  final String image, title, size, description;
  final int price, id;
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
      title: "Sweet Name",
      price: 123,
      size: 'small',
      description: dummyText,
      image: "images/cake9.png",
      color: Color(0xFFf0b1bd)),
  Product(
      id: 2,
      title: "Sweet Name",
      price: 123,
      size: 'small',
      description: dummyText,
      image: "images/cake11.png",
      color: Color(0xFF6f2dbd)),
  Product(
    id: 3,
    title: "Sweet Name",
    price: 123,
    size: 'big',
    description: dummyText,
    image: "images/cake12.png",
    color: Color(0xFFffbe0b),
  ),
  Product(
    id: 4,
    title: "Sweet Name",
    price: 123,
    size: 'small',
    description: dummyText,
    image: "images/cake6.png",
    color: Color(0xFFf07188),
  ),
  Product(
    id: 5,
    title: "Sweet Name",
    price: 123,
    size: 'small',
    description: dummyText,
    image: "images/cake13.png",
    color: Color(0xFF2a9134),
  ),
  Product(
    id: 6,
    title: "Sweet Name",
    price: 123,
    size: 'small',
    description: dummyText,
    image: "images/cake15.png",
    color: Color(0xFFb76935),
  ),
  Product(
    id: 7,
    title: "Sweet Name",
    price: 123,
    size: 'small',
    description: dummyText,
    image: "images/cake5.png",
    color: Color(0xFFb76550),
  ),
  Product(
    id: 8,
    title: "Sweet Name",
    price: 123,
    size: 'small',
    description: dummyText,
    image: "images/cake4.png",
    color: Colors.blue[600],
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
