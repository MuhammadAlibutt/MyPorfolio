import 'package:flutter/material.dart';
import 'menu.dart';

class About extends StatelessWidget {
  const About({super.key});
  final String paragraph =
      "I'm Muhammad Ali Butt, A Computer Science Student,I am passionate about exploring new technologies and programming languages.Recently, I have started learning Flutter and I am truly fascinated by its versatility and ease of use for developing mobile applications.Through my studies and personal projects, I strive to not only enhance my technical skills but also to develop my creativity and problem-solving abilities.As I continue to learn and grow as a developer, I am excited to apply my knowledge and contribute to the ever-evolving world of technology.";

  @override
  Widget build(BuildContext context) {
    List<String> items = paragraph.split('.');
    items.removeLast();
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => Menu()),
              ),
            );
          },
          icon: Icon(Icons.home),
        ),
        centerTitle: true,
        title: Text(
          'Introduction',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.check_circle),
                title: Text(items[index] + '.'),
              );
            },
          ),
        ),
      ),
    );
  }
}
















// import 'package:flutter/material.dart';
// import 'menu.dart';

// class About extends StatefulWidget {
//   const About({super.key});

//   @override
//   State<About> createState() => _AboutState();
// }

// class _AboutState extends State<About> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: ((context) => Menu()),
//               ),
//             );
//           },
//           icon: Icon(Icons.home),
//         ),
//       ),
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         color: Colors.lightBlueAccent,
//         child: Container(
//           width: MediaQuery.of(context).size.width * 0.8,
//           height: MediaQuery.of(context).size.height * 0.3,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 child: Text(
//                   "Introduction",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 50,
//                     fontFamily: 'Roboto',
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 70,
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 child: Text(
//                   "\u2022Hi, I'm Muhammad Ali Butt, A Computer Science Student.I am passionate about exploring new technologies and programming languages.\n\n\u2022Recently, I have started learning Flutter and I am truly fascinated by its versatility and ease of use for developing mobile applications.\n\n\u2022Through my studies and personal projects, I strive to not only enhance my technical skills but also to develop my creativity and problem-solving abilities.\n\n\u2022As I continue to learn and grow as a developer, I am excited to apply my knowledge and contribute to the ever-evolving world of technology.",
//                   //textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontFamily: 'Arial',
//                     fontSize: 18,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
