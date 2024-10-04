import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/utils/constants/colorconstants.dart';
import 'package:netflix/utils/constants/imageconstant.dart';
import 'package:netflix/views/addprofile/addprofile.dart';

class GetstartScreen extends StatelessWidget {
  const GetstartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(Imageconstant.getscreen))),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue.withOpacity(0.3),
                  Colors.red.withOpacity(0.4),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 120,
            child: Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "Unlimited\n entertainment,\none low price",
                  style: GoogleFonts.archivoBlack(
                      color: Colorconstants.primarywhite, fontSize: 35),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "All of Netflix ,starting at just\n@149",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colorconstants.primarywhite,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Addprofile(),
                      ));
                },
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colorconstants.primaryred),
                  child: Center(
                      child: Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colorconstants.primarywhite,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
