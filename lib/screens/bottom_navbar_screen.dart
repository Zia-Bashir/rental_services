// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:rental_services/screens/collection_screen.dart';
import 'package:rental_services/screens/home_screen.dart';
import 'package:rental_services/screens/profile_screen.dart';
import 'package:rental_services/screens/saved_collection_screen.dart';
import 'package:rental_services/utils/colors.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _selesctedIndex = 0;
  List screens = [
    const HomeScreen(),
    const CollectionScreen(),
    const SavedCollectionScreen(),
    const ProfileScreen(),
  ];
  void onTabScreen(int index) {
    setState(() {
      _selesctedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: screens[_selesctedIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: AppColors.shadeColor,
            primaryColor: AppColors.shadeColor),
        child: BottomNavigationBar(
            //landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
            backgroundColor: AppColors.bgColor,
            //fixedColor: AppColors.shadeColor,
            selectedItemColor: AppColors.iconColor,
            unselectedItemColor: Colors.white,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            currentIndex: _selesctedIndex,
            onTap: onTabScreen,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_outlined),
                label: "Collection",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline),
                label: "Saved",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: "Profile",
              ),
            ]),
      ),
    );
  }
}
