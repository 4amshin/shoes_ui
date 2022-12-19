import 'package:flutter/material.dart';
import 'package:shoes_ui/model/shoes_model.dart';
import 'package:shoes_ui/widget/svg_icon.dart';

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
          top: 15,
        ),
        child: Column(
          children: [
            Container(
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
                      color: Colors.grey.withOpacity(0.25),
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
                      color: Colors.grey.withOpacity(0.25),
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
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 150,
                          child: Text(
                            widget.item.itemName!,
                            style: const TextStyle(
                              height: 1,
                              fontSize: 22,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                            ),
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
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Size',
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
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
                        //add the description dropdown menu
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Description",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SvgIcon(
                                assetName: "assets/icon/arrow-down.svg",
                                width: 15,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Review",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SvgIcon(
                                assetName: "assets/icon/arrow-down.svg",
                                width: 15,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: widget.item.priceColor!,
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 13,
                                  color: widget.item.priceColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: widget.item.priceColor!,
                            ),
                            child: const Center(
                              child: Text(
                                'Add to Cart',
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
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
