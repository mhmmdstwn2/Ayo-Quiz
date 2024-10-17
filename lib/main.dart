import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ayo_quizz/ss.dart';
import 'package:ayo_quizz/homescreen/home_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ayo Quizz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/home': (context) =>HomeScreen(), 
      },
    );
  }
}
