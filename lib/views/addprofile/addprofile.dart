import 'package:flutter/material.dart';
import 'package:netflix/utils/constants/colorconstants.dart';
import 'package:netflix/utils/constants/imageconstant.dart';
import 'package:netflix/views/bottomnavigation/bottomnavigation.dart';

class Addprofile extends StatefulWidget {
  const Addprofile({super.key});

  @override
  State<Addprofile> createState() => _AddprofileState();
}

class _AddprofileState extends State<Addprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.primaryBlack,
      appBar: AppBar(
        backgroundColor: Colorconstants.primaryBlack,
        title: Center(
          child: SizedBox(
            width: 138,
            height: 37,
            child: Image.asset(
              fit: BoxFit.cover,
              "assets/images/BrandAssets_Logos_01-Wordmark-removebg-preview.png",
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 16, vertical: 20),
            child: Icon(
              Icons.edit,
              size: 20,
              color: Colorconstants.primarywhite,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 120,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bottomnavigation(),
                      ));
                },
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(Imageconstant.me))),
                    ),
                    Text(
                      "Me",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colorconstants.primarywhite,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 25,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bottomnavigation(),
                      ));
                },
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(Imageconstant.rahul))),
                    ),
                    Text(
                      "Rahul",
                      style: TextStyle(
                          color: Colorconstants.primarywhite,
                          fontWeight: FontWeight.normal,
                          fontSize: 14),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 23,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bottomnavigation(),
                      ));
                },
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(Imageconstant.Sam))),
                    ),
                    Text(
                      "Sam",
                      style: TextStyle(
                          color: Colorconstants.primarywhite, fontSize: 14),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 25,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bottomnavigation(),
                      ));
                },
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(Imageconstant.kids))),
                    ),
                    Text(
                      "kids",
                      style: TextStyle(
                          color: Colorconstants.primarywhite, fontSize: 14),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 36,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   width: 110,
              // ),
              InkWell(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colorconstants.primarywhite,
                      child: Icon(Icons.add),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Add profile",
                      style: TextStyle(
                          color: Colorconstants.primarywhite,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 120,
              ),
            ],
          )
        ],
      ),
    );
  }
}
