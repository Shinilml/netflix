import 'package:flutter/material.dart';
import 'package:netflix/utils/constants/colorconstants.dart';
import 'package:netflix/utils/constants/imageconstant.dart';
import 'package:netflix/views/More_Screen/widgets/profile_card.dart';
import 'package:netflix/views/addprofile/addprofile.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.primaryBlack,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileSection(),
          shareSection(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Row(
              children: [
                Icon(
                  Icons.check,
                  color: Colorconstants.primarywhite,
                  size: 33,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "My LIst",
                  style: TextStyle(
                      color: Colorconstants.primarywhite,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colorconstants.primarygreyshade,
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              children: [
                Text(
                  "App Settings",
                  style: TextStyle(
                      color: Colorconstants.primarywhite,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Accounts",
                  style: TextStyle(
                      color: Colorconstants.primarywhite,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Help",
                  style: TextStyle(
                      color: Colorconstants.primarywhite,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Addprofile(),
                      ),
                      (route) => false,
                    );
                  },
                  child: Text(
                    "Sign Out",
                    style: TextStyle(
                        color: Colorconstants.primarywhite,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container shareSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 16),
      height: 247,
      width: double.infinity,
      decoration: BoxDecoration(color: Colorconstants.primaryBlackshade2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.message_outlined,
                color: Colorconstants.primarywhite,
              ),
              SizedBox(
                width: 9,
              ),
              Text(
                "Tell Friends About Netflix",
                style: TextStyle(
                    color: Colorconstants.primarywhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
            style: TextStyle(
                color: Colorconstants.primarywhite,
                fontWeight: FontWeight.w600,
                fontSize: 10),
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            "Terms & Conditions",
            style: TextStyle(
                color: Colorconstants.primarygreyshade,
                fontWeight: FontWeight.w600,
                fontSize: 10),
          ),
          SizedBox(
            height: 11,
          ),
          Row(
            children: [
              Container(
                height: 37,
                width: 247,
                color: Colorconstants.primaryBlack,
              ),
              SizedBox(
                width: 7,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 9, vertical: 7),
                height: 37,
                width: 96,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colorconstants.primarywhite),
                child: Text(
                  "Copy Link",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colorconstants.primaryBlack,
                      fontSize: 17),
                ),
              )
            ],
          ),
          Row(
            children: [
              // Container(
              //   height: 36,
              //   width: 36,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(8),
              //       image: DecorationImage(
              //           image: AssetImage("assets/images/whatapp.jpg"))),
              // ),
              // Container(
              //   height: 36,
              //   width: 36,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(8),
              //       image: DecorationImage(
              //           image: AssetImage("assets/images/fb.png"))),
              // ),
              // Container(
              //   height: 36,
              //   width: 36,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(8),
              //       image: DecorationImage(
              //           image: AssetImage("assets/images/gmail.png"))),
              // )
            ],
          )
        ],
      ),
    );
  }

  Column ProfileSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 38),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Profilecard(
                user: "Me",
                image: Imageconstant.me,
                heigth: 75,
                width: 75,
              ),
              Profilecard(
                user: "Rahul",
                image: Imageconstant.rahul,
                heigth: 75,
                width: 75,
              ),
              Profilecard(
                user: "Sam",
                image: Imageconstant.Sam,
                heigth: 75,
                width: 75,
              ),
              Profilecard(
                user: "Kids",
                image: Imageconstant.kids,
                heigth: 75,
                width: 75,
              ),
              Container(
                height: 58,
                width: 63,
                decoration: BoxDecoration(
                    color: Colorconstants.primaryBlack,
                    border: Border.all(color: Colorconstants.primarygreyshade)),
                child: Icon(
                  Icons.add,
                  size: 35,
                  color: Colorconstants.primarywhite,
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.edit,
              color: Colorconstants.primarygreyshade,
              size: 12,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              "Manage Profile",
              style: TextStyle(
                  color: Colorconstants.primarygreyshade,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ],
    );
  }
}
