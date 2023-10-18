import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  final double CoverHeight = 280.0;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    final top = CoverHeight - profileHeight / 2;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          BuildTop(top),
          SizedBox(height: 80),
          Center(
            child: Text(
              'About Me',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Center(
            child: Text(
              'Adhitya Saputra',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              'Mulawarman University Student',
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height:10),
          Center(
            child: Container(
              width: 350,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 20),
                        Text(
                          '128',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Projects',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 20),
                        Text(
                          '20.0k',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Followers',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 20),
                        Text(
                          '200',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Following',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    )
                  ],
              ),
            )
          )
        ],
      ),
    );
  }

  Stack BuildTop(double top) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
          buildCoverImage(),
          Positioned(
            top: top -10,
            child: buildProfilebackground(),
          ),
          Positioned(
            top: top,
            child: buildProfileImage(),
          ),
        ],
      );
  }
  Widget buildCoverImage() => Container(
    color: Colors.grey,
    child: Image.network(
      'https://th.bing.com/th/id/OIP.WX4txSWr1bxKBJHOSDiSiwHaE7?pid=ImgDet&rs=1',
      width: double.infinity,
      height: CoverHeight,
      fit: BoxFit.cover,
    ),
  );

  Widget buildProfileImage() => CircleAvatar(
    radius: profileHeight/2,
    backgroundColor: Colors.grey.shade800,
    backgroundImage: NetworkImage('https://avatars.githubusercontent.com/Adhityasaputra'),
  );
  Widget buildProfilebackground() => CircleAvatar(
    radius: profileHeight/1.8,
    backgroundColor: Colors.white,
  );
}

