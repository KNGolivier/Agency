import 'package:flutter/material.dart';
import 'package:gallery/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vacance',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}