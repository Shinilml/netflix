import 'package:flutter/material.dart';
import 'package:netflix/utils/constants/colorconstants.dart';

class continuewatching extends StatelessWidget {
  String pics;
  continuewatching({super.key, required this.pics});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 177,
          width: 103,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage(pics), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            color: Colorconstants.primaryBlack,
            height: 37,
            width: 103,
            padding:
                EdgeInsetsDirectional.symmetric(vertical: 7, horizontal: 12),
            child: Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: Colorconstants.primarywhite,
                ),
                SizedBox(
                  width: 31,
                ),
                Icon(
                  Icons.more_vert_outlined,
                  color: Colorconstants.primarywhite,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
