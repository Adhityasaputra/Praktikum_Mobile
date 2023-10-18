import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:posttest4_102_adithya_saputra/About_us.dart';
import 'package:posttest4_102_adithya_saputra/Events_page.dart';
import 'package:posttest4_102_adithya_saputra/Shop_page.dart';
import 'package:posttest4_102_adithya_saputra/home_page.dart';
import 'package:posttest4_102_adithya_saputra/orders_page.dart';

class BottomScreenState extends StatefulWidget {
  const BottomScreenState({super.key});

  @override
  State<BottomScreenState> createState() => BottomScreenStateState();
}

class BottomScreenStateState extends State<BottomScreenState> {
  int _index =0;
  final List<Widget> Pages =[
    HomePage(),
    EventPage(),
    ShopPage(),
    OrdersPage(),
    AboutUs(),
  ];
  void _onItemTapped(int index){
    setState(() {
      _index = index;
    });
  }
  @override
  void initState(){
    super.initState();
    _index = 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawers(),
      appBar: AppBar(
        title: const Text(
          'CELCIUS',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Popins',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: (){},
            child: Icon(
              Icons.shopping_cart,
            ),
          ),
          SizedBox(width: 10),
        ],
        centerTitle: true,
        elevation: 3.0,
        shadowColor: Colors.black,
      ),
      body: Center(
        child: Pages.elementAt(_index),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 10),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            padding: EdgeInsets.all(16 ),
            gap: 8,
            onTabChange: (index){
              _onItemTapped(index);
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Discover',
              ),
              GButton(
                icon: Icons.event,
                text: 'Events',
              ),
              GButton(
                icon: Icons.shopping_bag,
                text: 'Shop',
              ),
              GButton(
                icon: Icons.delivery_dining,
                text: 'Orders',
              ),
              GButton(
                icon: Icons.person,
                text: 'About Us',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Drawer Drawers() {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 10),
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white
            ),
            currentAccountPicture: Container(
              width: 500,
              height: 500,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image:  NetworkImage('https://avatars.githubusercontent.com/Adhityasaputra'),
                  fit: BoxFit.fill
                ),
              ),
            ),
            accountName: Text(
              'AdtSaputra',
              style: TextStyle(
                color: Colors.black,
              ),
            ), 
            accountEmail: Text(
              'adityasaputrangeri@gmail.com',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              size: 30,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: const Icon(
              Icons.search,
              size: 30,
            ),
            title: Text(
              'Search',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              size: 30,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}