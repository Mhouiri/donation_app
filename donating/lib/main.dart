import 'package:donating/Pages/Home/UrgentCases/DonatingPage/donatingPage.dart';
import 'package:donating/Pages/Home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
      '/home': (context) => Home(),
      '/donate': (context) => DonatingPage(),
      },
    );
  }
}

