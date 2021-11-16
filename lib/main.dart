import 'package:bienesraices_escobarlopez/screens/home/Home_screen.dart';
import 'package:flutter/material.dart';
import 'constants/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bienes Raices App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: white
      ),
      home: HomeScreen(),
    );
  }
}