import 'package:flutter/material.dart';

class Shoes {
  final String? itemName;
  final String? price;
  final String? imgAsset;
  final Color? priceColor;

  Shoes({
    required this.itemName,
    required this.price,
    required this.imgAsset,
    required this.priceColor,
  });
}

var shoeList = [
  Shoes(
      itemName: "Nike Air Max 90",
      price: "\$ 113.00",
      imgAsset: "assets/images/shoe1.jpg",
      priceColor: const Color.fromARGB(255, 85, 178, 255)),
  Shoes(
    itemName: "Nike Civilist Dunk",
    price: "\$ 120.00",
    imgAsset: "assets/images/shoe2.jpg",
    priceColor: const Color(0xfff25e7e),
  ),
  Shoes(
    itemName: "Nike Phantom X",
    price: "\$ 199.00",
    imgAsset: "assets/images/shoe3.jpg",
    priceColor: const Color(0xff94c93d),
  ),
];
