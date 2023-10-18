import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  final TextEditingController nameController = TextEditingController();
  String pakaian = 'Baju';
  bool terima = false;
  void show(){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(          
          title: Text(
            'Pesanan Anda',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.red,          
          content: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 300,
                  height: 290,
                  margin: EdgeInsets.fromLTRB(10, 25, 10, 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.orange,                    
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 220,
                        height : 50,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                            'Name: ${nameController.text}',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                        ),
                      ),
                      Container(
                        width: 220,
                        height : 50,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                            'Pakaian: $pakaian',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: 220,
                        height : 50,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                            '${terima ? 'Yes' : 'No'}',
                            style: TextStyle(                              
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            ElevatedButton( 
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back, // Ikon panah ke kanan
                size: 35.0, // Ukuran ikon sesuai kebutuhan
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                minimumSize: Size(50, 75),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueGrey,
              ),                                
            ),
          ],
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: (){},
        ),
        title: const Text(
          'CELCIUS',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Popins',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: (){},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            margin: const EdgeInsets.fromLTRB(15, 15, 15, 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage("assets/img_home.jpg"),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade600,
                  offset: const Offset(4.0, 4.0),
                  blurRadius: 10,
                  spreadRadius: 1.0,
                ),
              ],
            ),
          ),
          Container(
            height: 330.0,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade600,
                  offset: const Offset(4.0, 4.0),
                  blurRadius: 10,
                  spreadRadius: 1.0,
                ),
              ],
            ),
            child: Column(
              children: [
                const Text(
                  'DATA PESANAN',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    hintText: 'Masukkan Nama anda',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Column(
                  children: [
                    const Text(
                      'Pakaian',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio(
                          value: 'Pria',
                          groupValue: pakaian,
                          onChanged: (value) {
                            setState(() {
                              pakaian = value.toString();
                            });
                          },
                        ),
                        const Text('Pria'),
                        const SizedBox(width: 10.0),
                        Radio(
                          value: 'Perempuan',
                          groupValue: pakaian,
                          onChanged: (value) {
                            setState(() {
                              pakaian = value.toString();
                            });
                          },
                        ),
                        const Text('Perempuan'),
                        const SizedBox(width: 10.0),
                        Radio(
                          value: 'Other',
                          groupValue: pakaian,
                          onChanged: (value) {
                            setState(() {
                              pakaian = value.toString();
                            });
                          },
                        ),
                        const Text('Other'),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        Checkbox(
                          value: terima,
                          onChanged: (value) {
                            setState(() {
                              terima = value!;
                            });
                          },
                        ),
                        Text('Accept All and Cookies.'),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          show();
                        });
                      },
                      label: Text(
                        'Upload',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20.0,
                        ),
                      ),
                      icon: Icon(Icons.upload),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}