import 'package:flutter/material.dart';
import 'package:food_finder_login_screen/app.dart';

void main() => runApp(MaterialApp(
      home: SafeArea(child: MyApp()),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black, cursorColor: Colors.black),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Login(),
    );
  }
}
