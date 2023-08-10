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
    const dashboard_screen(),
    const favItemScreen(),
    const cartScreeen(),
    const profileScreen(),
  ];
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
        body:page[_SelectedTab.values.indexOf(_selectedTab)],
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: DotNavigationBar(
              margin: const EdgeInsets.only(left: 10, right: 10),
              currentIndex: _SelectedTab.values.indexOf(_selectedTab),
              onTap: _handleIndexChanged,
              selectedItemColor: Colors.red.shade700,
              splashBorderRadius: 50,
            enableFloatingNavBar: true,
            enablePaddingAnimation: true,
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 0.5,
                spreadRadius: 2,
              )
            ],
            items: [
            /// Home
            DotNavigationBarItem(icon: const Icon(Icons.home),),
            /// Likes
            DotNavigationBarItem(icon: const Icon(Icons.favorite_border),),
            /// Search
            DotNavigationBarItem(icon: const Icon(Icons.shopping_cart,),),
            /// Profile
            DotNavigationBarItem(icon: const Icon(Icons.person),),
      ],
    ),
          ),
        //backgroundColor:Colors.transparent,
    );
  }
}
