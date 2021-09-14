import 'package:flutter/material.dart';
import 'package:gopay/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GoPay',
      theme: ThemeData(
        primaryColor: Color(0xff605DED),
      ),
      home: WelcomePage(),
    );
  }
}
