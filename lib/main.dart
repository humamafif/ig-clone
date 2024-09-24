import 'package:cobacoba/halaman1.dart';
import 'package:cobacoba/halaman2.dart';
import 'package:cobacoba/home_page.dart';
import 'package:cobacoba/input_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
