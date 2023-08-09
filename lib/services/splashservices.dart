import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app_2/ui/dashboard_screen.dart';
import 'package:flutter_app_2/ui/home_screen.dart';

class SplashServices {
  void screenRoute(BuildContext context) {
    Timer(
        const Duration(seconds: 4),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const homeScreen())));
  }
}
