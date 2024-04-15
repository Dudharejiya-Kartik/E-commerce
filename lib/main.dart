import 'package:ecommerce/Utils/colors.dart';
import 'package:ecommerce/Utils/headphones.dart';
import 'package:ecommerce/view/screens/Homescreen.dart';
import 'package:ecommerce/view/screens/cartscreen.dart';
import 'package:ecommerce/view/screens/productscreen.dart';
import 'package:ecommerce/view/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xff1A1B1D),
      statusBarBrightness: Brightness.light,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light));
  runApp(app());
}

// Color(0xffF4F6F8)
class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => splashscreen(),
        '/home': (context) => HomeScreen(),
        '/product': (context) => productscreen(),
        '/cart': (context) => cartscreen(),
      },
    );
  }
}
