import 'package:flutter/material.dart';
import 'package:shoes_ui/widget/svg_icon.dart';

class SearchingBar extends StatelessWidget {
  const SearchingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.grey[400]),
          contentPadding: const EdgeInsets.only(
            left: 20,
            top: 8,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SvgIcon(
              onTap: () {},
              assetName: 'assets/icon/search.svg',
              width: 18,
              color: Colors.grey[400],
            ),
          ),
        ),
      ),
    );
  }
}
