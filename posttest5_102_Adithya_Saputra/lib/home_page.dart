import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var Lebar = MediaQuery.of(context).size.width;
    var Tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: Lebar,
        height: Tinggi,
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(height: 10),
            Container(
              width: Lebar,
              height: 450,
              decoration: BoxDecoration(
                 color: Colors.red,
                 image: DecorationImage(
                  image: AssetImage('assets/discover_1.jpeg'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey, // Warna bayangan
                    offset: Offset(4, 4), // Geser bayangan secara horizontal (X) dan vertikal (Y)
                    blurRadius: 5, // Radius blur bayangan
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Container(
                    width: Lebar,
                    height: 450,
                    color: Colors.white.withOpacity(0.2),
                    padding: EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 260),
                        Text(
                          'Just In',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          'DISCOVER THE LATEST',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w900
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 390,
                    left: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        backgroundColor: Colors.black,
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: Text(
                        'Shop Now',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: (){}, 
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: Lebar,
              height: 450,
              decoration: BoxDecoration(
                 color: Colors.red,
                 image: DecorationImage(
                  image: AssetImage('assets/discover_2.jpeg'),
                  fit: BoxFit.cover
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey, // Warna bayangan
                    offset: Offset(4, 4), // Geser bayangan secara horizontal (X) dan vertikal (Y)
                    blurRadius: 5, // Radius blur bayangan
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Container(
                    width: Lebar,
                    height: 450,
                    color: Colors.white.withOpacity(0.2),
                    padding: EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 260),
                        Text(
                          'Mental Well-Being',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          'MIND, BODY, CONNECTION',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w900
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 390,
                    left: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        backgroundColor: Colors.black,
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: Text(
                        'Move With Us',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: (){}, 
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: Lebar,
              height: 450,
              decoration: BoxDecoration(
                 color: Colors.red,
                 image: DecorationImage(
                  image: AssetImage('assets/discover_3.jpeg'),
                  fit: BoxFit.cover
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey, // Warna bayangan
                    offset: Offset(4, 4), // Geser bayangan secara horizontal (X) dan vertikal (Y)
                    blurRadius: 5, // Radius blur bayangan
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Container(
                    width: Lebar,
                    height: 450,
                    color: Colors.white.withOpacity(0.2),
                    padding: EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 260),
                        Text(
                          'Well Build',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          'BUILT FROM THE GROUND UP',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w900
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 390,
                    left: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        backgroundColor: Colors.black,
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: Text(
                        'Shop Now',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: (){}, 
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}