import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  final Color? color;
  const BottomButtons({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 1,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: color!,
                  width: 2,
                ),
              ),
              child: Center(
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 13,
                    color: color!,
                    fontWeight: FontWeight.w500,
                  ),
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
              color: color!,
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
    );
  }
}
