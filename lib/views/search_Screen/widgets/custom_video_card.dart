import 'package:flutter/material.dart';
import 'package:netflix/utils/constants/colorconstants.dart';

class CustomVideoCard extends StatelessWidget {
  String pic;
  String shows;
  CustomVideoCard({super.key, required this.pic, required this.shows});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      // width: 375,
      width: double.infinity,
      decoration: BoxDecoration(color: Colorconstants.primarygreyshade2),
      child: Row(
        children: [
          Container(
            height: 76,
            width: 146,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(pic), fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 14,
          ),
          Text(
            shows,
            style: TextStyle(
                color: Colorconstants.primarywhite,
                fontSize: 14,
                fontWeight: FontWeight.normal),
          ),
          Spacer(),
          Icon(
            Icons.play_circle_outline,
            color: Colorconstants.primarygreyshade,
            size: 28,
          ),
          SizedBox(
            width: 4,
          )
        ],
      ),
    );
  }
}
