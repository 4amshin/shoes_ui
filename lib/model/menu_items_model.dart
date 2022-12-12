import 'package:flutter/material.dart';

class DrawerItem {
  final String? title;
  final IconData? icon;

  DrawerItem({required this.title, required this.icon});
}

var menuItems = [
  DrawerItem(
    title: "Home",
    icon: Icons.home,
  ),
  DrawerItem(
    title: "Info",
    icon: Icons.info,
  ),
];
