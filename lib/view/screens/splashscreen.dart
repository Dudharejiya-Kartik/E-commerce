import 'dart:async';

import 'package:ecommerce/view/screens/Homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => HomeScreen(),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Image.asset('assets/images/infinity.gif'),
      ),
    );
  }
}
