import 'package:flutter/material.dart';

class MensShop extends StatefulWidget {
  const MensShop({super.key});

  @override
  State<MensShop> createState() => _MensShopState();
}

class _MensShopState extends State<MensShop> {
  @override
  Widget build(BuildContext context) {
    var Lebar = MediaQuery.of(context).size.width;
    var Tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: Lebar,
        height: 100,
        color: Colors.black,
      )
    );
  }
}