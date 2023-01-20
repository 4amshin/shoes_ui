import 'package:flutter/material.dart';

class Shoes {
  final String? itemName;
  final String? price;
  final String? imgAsset;
  final Color? priceColor;
  final String? description;
  final String? review;
  final String? heroTag;

  Shoes({
    required this.itemName,
    required this.price,
    required this.imgAsset,
    required this.priceColor,
    required this.description,
    required this.review,
    required this.heroTag,
  });
}

var shoeList = [
  Shoes(
    itemName: "Nike Air Max 90",
    price: "\$ 113.00",
    imgAsset: "assets/images/shoe1.jpg",
    priceColor: const Color.fromARGB(255, 85, 178, 255),
    description:
        "Step up your style game with these sleek and stylish shoes. Made with high-quality materials and a durable construction, these shoes are built to last. The breathable and padded interior ensures maximum comfort, while the rubber outsole provides excellent traction and support.",
    review:
        "The materials and construction are top-notch and the shoes are incredibly comfortable to wear. I've worn them for both casual outings and more intense activities, and they have held up well in both situations. The rubber outsole provides excellent traction and the padded interior makes them a pleasure to wear for extended periods of time.",
    heroTag: "airMax",
  ),
  Shoes(
    itemName: "Nike Civilist Dunk",
    price: "\$ 120.00",
    imgAsset: "assets/images/shoe2.jpg",
    priceColor: const Color.fromARGB(255, 255, 63, 105),
    description:
        "Step up your style game with these sleek and stylish shoes. Made with high-quality materials and a durable construction, these shoes are built to last. The breathable and padded interior ensures maximum comfort, while the rubber outsole provides excellent traction and support.",
    review:
        "The materials and construction are top-notch and the shoes are incredibly comfortable to wear. I've worn them for both casual outings and more intense activities, and they have held up well in both situations. The rubber outsole provides excellent traction and the padded interior makes them a pleasure to wear for extended periods of time.",
    heroTag: "dunk",
  ),
  Shoes(
    itemName: "Nike Phantom X",
    price: "\$ 199.00",
    imgAsset: "assets/images/shoe3.jpg",
    priceColor: const Color(0xff94c93d),
    description:
        "Step up your style game with these sleek and stylish shoes. Made with high-quality materials and a durable construction, these shoes are built to last. The breathable and padded interior ensures maximum comfort, while the rubber outsole provides excellent traction and support.",
    review:
        "The materials and construction are top-notch and the shoes are incredibly comfortable to wear. I've worn them for both casual outings and more intense activities, and they have held up well in both situations. The rubber outsole provides excellent traction and the padded interior makes them a pleasure to wear for extended periods of time.",
    heroTag: "phantom",
  ),
];
