import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(KidsMathLearningApp());
}

class KidsMathLearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Math Learning App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
