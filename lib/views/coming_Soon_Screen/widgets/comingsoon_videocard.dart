import 'package:flutter/material.dart';
import 'package:netflix/utils/constants/colorconstants.dart';

class comingsoon_videocard extends StatelessWidget {
  String pic;
  String title;
  comingsoon_videocard({super.key, required this.pic, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 392,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: 195,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(pic))),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Spacer(),
              Column(
                children: [
                  Icon(
                    Icons.notifications_sharp,
                    size: 24,
                    color: Colorconstants.primarywhite,
                  ),
                  Text(
                    "Remind Me",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colorconstants.primarywhite,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
              SizedBox(
                width: 47,
              ),
              Column(
                children: [
                  Icon(
                    Icons.share,
                    size: 24,
                    color: Colorconstants.primarywhite,
                  ),
                  Text(
                    "Share",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colorconstants.primarywhite,
                        fontWeight: FontWeight.normal),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Season 1 Coming on December 14",
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: Colorconstants.primarywhite),
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colorconstants.primarywhite,
                      fontSize: 19),
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.",
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: Colorconstants.primarywhite),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
