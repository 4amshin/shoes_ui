import 'package:flutter/material.dart';

class DrawerItem {
  final String? title;
  final String? icon;
  final Color? iconColor;
  bool isSelected;

  DrawerItem({
    required this.iconColor,
    required this.title,
    required this.icon,
    required this.isSelected,
  });
}

List menuItems = [
  DrawerItem(
    title: "Home",
    icon: "assets/icon/home.svg",
    iconColor: Colors.white,
    isSelected: false,
  ),
  DrawerItem(
    title: "About Us",
    icon: "assets/icon/info-circle.svg",
    iconColor: Colors.white,
    isSelected: false,
  ),
];
