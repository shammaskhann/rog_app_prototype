import 'package:flutter/material.dart';
import 'package:flutter_app_2/ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          labelLarge: TextStyle(fontFamily: 'Metro', fontSize: 40,fontWeight: FontWeight.bold, color: Colors.white),
          labelMedium:TextStyle(fontFamily: 'Metro', fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white),
          labelSmall: TextStyle(fontFamily: 'Metro', fontSize: 10, color: Colors.grey),
        )
      ),
      home: const SplashScreen(),
    );
  }
}
