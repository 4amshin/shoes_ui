import 'package:flutter/material.dart';
import 'package:shoes_ui/model/menu_items_model.dart';
import 'package:shoes_ui/widget/svg_icon.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int? _selectedMenu = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        minimum: const EdgeInsets.only(
          top: 80,
          bottom: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: menuItems.length,
                itemBuilder: (context, index) {
                  final DrawerItem item = menuItems[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedMenu = index;
                      });
                    },
                    child: Container(
                      height: 30,
                      padding: const EdgeInsets.only(left: 10),
                      margin: const EdgeInsets.only(
                        bottom: 10,
                        left: 10,
                        right: 35,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: _selectedMenu == index
                            ? Colors.black26
                            : Colors.transparent,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgIcon(
                            assetName: item.icon!,
                            color: _selectedMenu == index
                                ? Colors.white70
                                : item.iconColor,
                            width: _selectedMenu == index ? 18 : 17,
                            height: _selectedMenu == index ? 18 : 17,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            item.title!,
                            style: TextStyle(
                              color: _selectedMenu == index
                                  ? Colors.white70
                                  : item.iconColor,
                              fontWeight: FontWeight.w500,
                              fontSize: _selectedMenu == index ? 15 : 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
