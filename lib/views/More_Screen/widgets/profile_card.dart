import 'package:flutter/material.dart';
import 'package:netflix/utils/constants/colorconstants.dart';

class Profilecard extends StatelessWidget {
  String user;
  String image;
  double heigth;
  double width;
  Profilecard(
      {super.key,
      required this.user,
      required this.image,
      this.heigth = 100,
      this.width = 100});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            height: heigth,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          Text(
            user,
            style: TextStyle(
                fontSize: 14,
                color: Colorconstants.primarywhite,
                fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
