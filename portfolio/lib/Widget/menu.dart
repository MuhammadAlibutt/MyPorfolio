import 'package:flutter/material.dart';
import 'about.dart';
import 'projects.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:core';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Portfolio'),
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Muhammad Ali Arif Butt',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/cvpic.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  height: 5.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => About()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blueGrey,
                    ),
                    minimumSize: MaterialStateProperty.all(
                      Size(120, 40),
                    ),
                  ),
                  child: Text('Intro.'),
                ),
                SizedBox(
                  height: 5.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Project(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blueGrey,
                    ),
                    minimumSize: MaterialStateProperty.all(
                      Size(120, 40),
                    ),
                  ),
                  child: Text('Experience'),
                ),
                SizedBox(
                  height: 5.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      _downloadCV();
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.blueGrey,
                      ),
                      minimumSize: MaterialStateProperty.all(
                        Size(120, 40),
                      ),
                    ),
                    child: Text('CV')),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          color: Colors.lightBlueAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mail),
                  SizedBox(
                    height: 5,
                  ),
                  Text('muhammadalibutt34@gmail.com'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.call),
                  SizedBox(
                    height: 5,
                  ),
                  Text('+923186449413'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _downloadCV() async {
    Uri url = Uri.parse(
        'https://drive.google.com/uc?export=download&id=1T0cwB07RivbJRjeKWte1onT1XfROE71l');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}



// Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Icon(Icons.email),
//               Text(
//                 'muhammadalibutt34@gmail.com',
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//               Icon(
//                 Icons.phone,
//               ),
//               Text(
//                 '+923186449413',
//                 style: TextStyle(color: Colors.black),
//               ),
//             ],
//           ),

// ElevatedButton(
//               onPressed: () {},
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all(
//                   Colors.blueGrey,
//                 ),
//                 minimumSize: MaterialStateProperty.all(
//                   Size(120, 40),
//                 ),
//               ),
//               child: Text('Experience'),
//             ),

// ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Contact(),
//                   ),
//                 );
//               },
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all(
//                   Colors.blueGrey,
//                 ),
//                 minimumSize: MaterialStateProperty.all(
//                   Size(120, 40),
//                 ),
//               ),
//               child: Text('Contact'),
//             ),