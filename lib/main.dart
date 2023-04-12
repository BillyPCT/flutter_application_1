import 'package:flutter/material.dart';
import 'package:flutter_application_1/firstscreen.dart';
import 'package:flutter_application_1/fourthscreen.dart';
import 'package:flutter_application_1/secondscren.dart';
import 'package:flutter_application_1/threescreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
         '/fourth':(context) => fourthscreen(),  

      },
    );
  }
}
