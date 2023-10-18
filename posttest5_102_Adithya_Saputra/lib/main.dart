import 'package:flutter/material.dart';
import 'package:posttest4_102_adithya_saputra/Bottom_navigation_bar.dart';
import 'package:posttest4_102_adithya_saputra/input_baju_celcius_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      home: const BottomScreenState(),
    );
  }
}

