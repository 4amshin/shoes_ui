import 'package:flutter/material.dart';
import 'package:shoes_ui/model/shoes_model.dart';
import 'package:shoes_ui/widget/2bottom_button.dart';
import 'package:shoes_ui/widget/svg_icon.dart';
import 'package:shoes_ui/widget/text_style.dart';

class DetailPage extends StatefulWidget {
  final Shoes item;
  const DetailPage({super.key, required this.item});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(
          left: 15,
          right: 15,
          bottom: 15,
          top: 5,
        ),
        child: Column(
          children: [
            Hero(
              tag: widget.item.heroTag!,
              child: Container(
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(widget.item.imgAsset!),
                    fit: BoxFit.cover,
                  ),
                  color: widget.item.priceColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 15, top: 15),
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: SvgIcon(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          assetName: 'assets/icon/arrow-left.svg',
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 15, top: 15),
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.3),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: SvgIcon(
                          assetName: 'assets/icon/heart.svg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 150,
                    child: Text(
                      widget.item.itemName!,
                      style: bigTitleStyle,
                    ),
                  ),
                  Text(
                    widget.item.price!,
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: "Poppins",
                      color: widget.item.priceColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Size',
                    style: mediumTitleStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 20),
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.25),
                          ),
                          child: const Center(
                            child: Text(
                              "42",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    color: Colors.transparent,
                    elevation: 0,
                    child: ExpansionTile(
                      title: Text(
                        "Description",
                        style: mediumTitleStyle(fontSize: 15),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            widget.item.description!,
                            style: detailStyle,
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.transparent,
                    elevation: 0,
                    child: ExpansionTile(
                      title: Text(
                        "Review",
                        style: mediumTitleStyle(fontSize: 15),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          child: Text(
                            widget.item.review!,
                            style: detailStyle,
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: BottomButtons(color: widget.item.priceColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
