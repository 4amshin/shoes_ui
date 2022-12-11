import 'package:flutter/material.dart';
import 'package:shoes_ui/widget/svg_icon.dart';

class SearchBar extends StatelessWidget {
  final String text;
  const SearchBar({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          const SizedBox(width: 15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            width: 35,
            height: 35,
            child: SvgIcon(
              onTap: () {},
              assetName: 'assets/icon/search.svg',
              color: Colors.grey[400],
              padding: const EdgeInsets.symmetric(horizontal: 8),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              color: Colors.grey[400],
            ),
          )
        ],
      ),
    );
  }
}
