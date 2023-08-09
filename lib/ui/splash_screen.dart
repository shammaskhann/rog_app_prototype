//splash screen with fade animation
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_2/services/splashservices.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _visible = true;
  @override
  void initState() {
    super.initState();
    fadeTime();
    SplashServices().screenRoute(context);
  }

  void fadeTime() {
    Timer(
        const Duration(seconds: 1),
        () => setState(() {
              _visible = !_visible;
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(seconds: 3),
           child: Image.asset('assets/images/splashLogo.png',
           width: MediaQuery.of(context).size.width - 100,
           ),
          // child: const Text(
          //   'Welcome to Flutter',
          //   style: TextStyle(
          //     fontSize: 20,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
        ),
      ),
      backgroundColor: Colors.black38,
    );
  }
}
