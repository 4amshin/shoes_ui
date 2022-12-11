import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes_ui/widget/item.dart';
import 'package:shoes_ui/widget/search_bar.dart';
import 'package:shoes_ui/widget/svg_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Top Product",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: SizedBox(
          width: 60,
          height: 60,
          child: SvgIcon(
            onTap: () {},
            assetName: 'assets/icon/3lline-01.svg',
          ),
        ),
        actions: [
          SvgIcon(
            onTap: () {},
            assetName: 'assets/icon/shoping-bag.svg',
            padding: const EdgeInsets.only(right: 16),
          )
        ],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 8,
          top: 8,
        ),
        child: Column(
          children: [
            const SearchBar(
              text: 'Search Shoes',
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SizedBox(
                height: 380,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: const [
                    Item(
                      imgAsset: 'assets/images/shoe1.jpg',
                      itemName: 'Nike Air Max 90',
                      itemPrice: '113.00',
                      priceTextColor: Color.fromARGB(255, 85, 178, 255),
                    ),
                    SizedBox(height: 30),
                    Item(
                      imgAsset: 'assets/images/shoe2.jpg',
                      itemName: 'Nike Civilist Dunk',
                      itemPrice: '120.00',
                      priceTextColor: Color(0xfff25e7e),
                    ),
                    SizedBox(height: 30),
                    Item(
                      imgAsset: 'assets/images/shoe3.jpg',
                      itemName: 'Nike Pahtom X',
                      itemPrice: '199.00',
                      priceTextColor: Color(0xff94c93d),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
