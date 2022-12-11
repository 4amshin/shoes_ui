import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  final Function() onTap;
  final String assetName;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  const SvgIcon({
    Key? key,
    required this.onTap,
    required this.assetName,
    this.padding,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        width: 38,
        height: 38,
        child: SvgPicture.asset(
          assetName,
          color: color,
        ),
      ),
    );
  }
}
