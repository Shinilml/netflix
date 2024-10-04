import 'package:flutter/material.dart';
import 'package:netflix/utils/constants/colorconstants.dart';
import 'package:netflix/views/addprofile/addprofile.dart';
import 'package:netflix/views/getstart_screen/getstart_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => GetstartScreen(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.primaryBlack,
      body: Center(
        child: Image.asset(
            "assets/images/BrandAssets_Logos_01-Wordmark-removebg-preview.png"),
      ),
    );
  }
}
