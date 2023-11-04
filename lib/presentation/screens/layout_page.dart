import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ionicons/ionicons.dart';
import 'package:tata_bouquet/presentation/screens/menu_page.dart';
import 'package:tata_bouquet/shared/colors.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  final iconList = <IconData>[
    Ionicons.rose_outline,
    Ionicons.location_outline,
    Ionicons.person_outline,
    Ionicons.bag_outline,
  ];

  var _bottomNavIndex = 0;
  final pageList = <Widget>[
    const MenuPage(),
    const Text('Location'),
    const Text('User'),
    const Text('Bag'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.smoothEdge,
        leftCornerRadius: 25,
        rightCornerRadius: 25,
        iconSize: 30,
        backgroundColor: Colors.white,
        activeColor: AppColors.primary,
        inactiveColor: AppColors.primary.withOpacity(0.3),
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
      body: pageList[_bottomNavIndex],
    );
  }
}
