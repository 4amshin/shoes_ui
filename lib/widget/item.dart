import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String imgAsset;
  final String itemName;
  final String itemPrice;
  final Color priceTextColor;
  const Item(
      {Key? key,
      required this.imgAsset,
      required this.itemName,
      required this.itemPrice,
      required this.priceTextColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 275,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage(imgAsset),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Positioned(
          bottom: 70,
          left: 30,
          child: Text(
            'Unisex sneaker shoes',
            style: TextStyle(
              color: Colors.black,
              fontSize: 10,
            ),
          ),
        ),
        Positioned(
          bottom: 45,
          left: 30,
          child: Text(
            itemName,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 30,
          child: Text(
            itemPrice,
            style: TextStyle(
              color: priceTextColor,
              fontSize: 15,
            ),
          ),
        ),
        Positioned(
          right: 30,
          bottom: 33,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
