import 'package:flutter/material.dart';
import 'Widget/menu.dart';
import 'Widget/practice.dart';

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blueGrey,
          child: Menu(),
        ),
      ),
    );
  }
}
