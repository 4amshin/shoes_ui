import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:shoes_ui/view/home_page.dart';
import 'package:shoes_ui/view/menu_page.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuBackgroundColor: Colors.indigo,
      borderRadius: 24.0,
      showShadow: true,
      angle: -6,
      slideWidth: MediaQuery.of(context).size.width * 0.60,
      mainScreen: const HomePage(),
      menuScreen: const MenuPage(),
    );
  }
}
