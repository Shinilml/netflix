import 'package:flutter/material.dart';
import 'package:netflix/utils/constants/colorconstants.dart';
import 'package:netflix/views/splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colorconstants.primaryBlack),
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
