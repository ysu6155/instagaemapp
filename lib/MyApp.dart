import 'package:flutter/material.dart';
import 'package:profileapp/screens/home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}