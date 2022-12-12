import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:shoes_ui/widget/svg_icon.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Page"),
        leading: SizedBox(
          width: 60,
          height: 60,
          child: SvgIcon(
            onTap: () {
              ZoomDrawer.of(context)!.toggle();
            },
            assetName: 'assets/icon/3lline-01.svg',
          ),
        ),
      ),
    );
  }
}
