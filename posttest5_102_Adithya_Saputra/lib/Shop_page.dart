import 'package:flutter/material.dart';
import 'package:posttest4_102_adithya_saputra/Mens_shop.dart';


class Product{
  String Products;
  String imagePath;

  Product({
    required this.Products,
    required this.imagePath,
  });
}

class Categorie {
  String Categories;
  String imagePath;
  Categorie({
    required this.Categories,
    required this.imagePath,
  });

}

class Shoe {
  String Shoes;
  String imagePath;
  Shoe({
    required this.Shoes,
    required this.imagePath,
  });

}

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final List <Product> ListProducts =[
    Product(Products: 'Air Max 1 Low', imagePath: 'assets/air_max_hitam.jpeg'),
    Product(Products: 'ZW Shirt', imagePath: 'assets/shirt_corak_putih.jpeg'),
    Product(Products: 'Zion Short', imagePath: 'assets/short_pants_hitam.jpeg'),
    Product(Products: 'Jordans shirt', imagePath: 'assets/shirt_putih.jpeg'),
  ];

  final List <Categorie> ListCategorie =[
    Categorie(Categories: 'Shoes', imagePath: 'assets/air_max_hitam.jpeg'),
    Categorie(Categories: 'Shirt', imagePath: 'assets/shirt_corak_putih.jpeg'),
    Categorie(Categories: 'Short', imagePath: 'assets/short_pants_hitam.jpeg'),
    Categorie(Categories: 'Sets', imagePath: 'assets/img_home.jpg'),
  ];

  final List <Shoe> ListShoe =[
    Shoe(Shoes: 'Air Jordan 1 Low', imagePath: 'assets/air_max_hitam.jpeg'),
    Shoe(Shoes: 'Air Jordan 3 High', imagePath: 'assets/air_max_putih.jpeg'),
    Shoe(Shoes: 'Air jordan XXXVIII PF', imagePath: 'assets/Air_jordan_XXXVIII_PF.jpeg'),
    Shoe(Shoes: 'PSG Jumpman MVP', imagePath: 'assets/PSG_Jumpman_MVP.jpeg'),
  ];

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
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                  child: Text(
                    'Best Of CELCIUS',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25,
                    ),
                  ),
                ),
                Container(
                  width: Lebar,
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ListProducts.length,
                    itemBuilder: (context, index){
                      return Container(
                        width: 150,
                        height: 170,
                        margin: EdgeInsets.only(left: 5, right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 220,
                              height: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(ListProducts[index].imagePath),
                                  filterQuality: FilterQuality.low,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              ListProducts[index].Products,
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      );
                    }
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: Lebar,
                  height: 500,
                  child: ListView.builder(
                    itemCount: ListCategorie.length,
                    itemBuilder: (context, index){
                      return Container(
                        width: 300,
                          height: 170,
                          margin: EdgeInsets.only(left: 5, right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 400,
                                height: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(ListCategorie[index].imagePath),
                                    filterQuality: FilterQuality.low,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20, top: 50),
                                  child: Text(
                                    ListCategorie[index].Categories,
                                    style: TextStyle(
                                      fontSize: 50,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                      );
                    }
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'In The Spotlight',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton.icon(
                        onPressed: () {},
                        label: Text(
                          'Viewall',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        icon: Icon(Icons.arrow_right_alt_sharp),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // Warna latar belakang tombol
                          onPrimary: Colors.grey.shade900, // Warna teks pada tombol
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // Mengatur sudut tombol
                          ),
                          minimumSize: Size(50, 50),
                          elevation: 0.0, // Ukuran minimum tombol
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: Lebar,
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ListShoe.length,
                    itemBuilder: (context, index){
                      return Column(
                        children: [
                          Container(
                            width: 150,
                            height: 170,
                            margin: EdgeInsets.only(left: 5, right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(ListShoe[index].imagePath),
                                filterQuality: FilterQuality.low,
                                fit: BoxFit.cover
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            width: 150,
                            height: 55,
                            margin: EdgeInsets.only(left: 5, right: 10),
                            child: Text(
                              ListShoe[index].Shoes,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          )
                        ],
                      );
                    }
                  )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}