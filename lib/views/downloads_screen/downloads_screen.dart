import 'package:flutter/material.dart';
import 'package:netflix/utils/constants/colorconstants.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.primaryBlack,
      appBar: AppBar(
        backgroundColor: Colorconstants.primaryBlack,
        title: Text(
          "Smart Downloads",
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: Colorconstants.primarywhite),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Introducing Downloads For You",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colorconstants.primarywhite),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              textAlign: TextAlign.start,
              """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.""",
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.normal,
                  color: Colorconstants.primarywhite),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: CircleAvatar(
              radius: 89,
              backgroundColor: Colorconstants.primarygreyshade2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 154, vertical: 13),
              height: 49,
              width: 353,
              decoration: BoxDecoration(
                  color: Colorconstants.primaryBlue,
                  borderRadius: BorderRadius.circular(6)),
              child: Text(
                "SETUP",
                style:
                    TextStyle(color: Colorconstants.primarywhite, fontSize: 14),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 11),
              height: 33,
              width: 239,
              decoration:
                  BoxDecoration(color: Colorconstants.primarygreyshade2),
              child: Text(
                "Find Something to Downlod",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colorconstants.primarywhite),
              ),
            ),
          )
        ],
      ),
    );
  }
}
