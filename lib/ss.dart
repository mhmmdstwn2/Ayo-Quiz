import 'package:flutter/material.dart';
import 'dart:async';
import 'package:ayo_quizz/homescreen/home_screen.dart'; // Pastikan jalur ini benar

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      // Mengarahkan ke HomeScreen setelah 3 detik
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/ss.png', // Path ke gambar splash screen
          height: 150,
        ),
      ),
    );
  }
}
