import 'package:flutter/material.dart';
import 'pages/landing_page.dart'; 

void main() => runApp(BumpApp());

class BumpApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

