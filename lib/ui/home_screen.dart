import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_2/ui/cart_screen.dart';
import 'package:flutter_app_2/ui/dashboard_screen.dart';
import 'package:flutter_app_2/ui/profile_screen.dart';

import 'favouriteItem_Screen.dart';
class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}
enum _SelectedTab { home, favorite, cart, person }
class _homeScreenState extends State<homeScreen>{
  List page=[
    dashboard_screen(),
    favItemScreen(),
    cartScreeen(),
    profileScreen(),
  ];
  int _bottomNavIndex=0;

  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
        body:page[_bottomNavIndex],
          bottomNavigationBar: Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: DotNavigationBar(
              margin: EdgeInsets.only(left: 10, right: 10),
              currentIndex: _SelectedTab.values.indexOf(_selectedTab),
              onTap: _handleIndexChanged,
              selectedItemColor: Colors.red.shade900,
              splashBorderRadius: 50,
            items: [
            /// Home
            DotNavigationBarItem(icon: Icon(Icons.home),selectedColor: Colors.purple,),
            /// Likes
            DotNavigationBarItem(icon: Icon(Icons.favorite_border), selectedColor: Colors.pink,),
            /// Search
            DotNavigationBarItem(icon: Icon(Icons.shopping_cart,), selectedColor: Colors.orange,),
            /// Profile
            DotNavigationBarItem(icon: Icon(Icons.person), selectedColor: Colors.teal,),
      ],
    ),
          ),
        //backgroundColor:Colors.transparent,
    );
  }
}
