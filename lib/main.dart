import 'package:flutter/material.dart';
import 'ss.dart'; // Import ss.dart sebagai splash screen utama

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ayco Quiz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Ganti home dengan SplashScreen dari ss.dart
    );
  }
}
