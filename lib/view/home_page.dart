import 'package:flutter/material.dart';
import 'package:shoes_ui/model/shoes_model.dart';
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
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: shoeList.length,
                  itemBuilder: (context, index) {
                    final Shoes item = shoeList[index];
                    return GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Item(
                          imgAsset: item.imgAsset!,
                          itemName: item.itemName!,
                          itemPrice: item.price!,
                          priceTextColor: item.priceColor!,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
