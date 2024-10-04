import 'package:flutter/material.dart';
import 'package:netflix/dummydb.dart';
import 'package:netflix/utils/constants/colorconstants.dart';
import 'package:netflix/views/homescreen/widgets/continue.dart';
import 'package:netflix/views/homescreen/widgets/custom_video_title_card.dart';
import 'package:netflix/views/video_player/video_player.dart';

class VideoplayScreen extends StatelessWidget {
  String showimage;
  VideoplayScreen({super.key, required this.showimage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.primaryBlack,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            topsection(
              imageshow: showimage,
            ),
            SizedBox(
              height: 43,
            ),
            previewsection(),
            SizedBox(
              height: 28,
            ),
            continueSection(),
            SizedBox(
              height: 28,
            ),
            custom_video_title_card(),
            SizedBox(
              height: 28,
            ),
          ],
        ),
      ),
    );
  }

  Container continueSection() {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Continue Watching",
            style: TextStyle(
                color: Colorconstants.primarywhite,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          SizedBox(
            height: 22,
          ),
          SizedBox(
            height: 177,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => continuewatching(
                pics: Dummydb.continuelist[index]["image"],
              ),
              separatorBuilder: (context, index) => SizedBox(
                width: 7,
              ),
              itemCount: Dummydb.continuelist.length,
            ),
          )
        ],
      ),
    );
  }

  Container previewsection() {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Preview",
            style: TextStyle(
                color: Colorconstants.primarywhite,
                fontSize: 26,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CircleAvatar(
                radius: 51,
                backgroundImage: NetworkImage(Dummydb.preview[index]["image"]),
              ),
              separatorBuilder: (context, index) => SizedBox(
                width: 7,
              ),
              itemCount: Dummydb.preview.length,
            ),
          )
        ],
      ),
    );
  }
}

class topsection extends StatelessWidget {
  String imageshow;
  topsection({super.key, required this.imageshow});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 415,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imageshow), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 40,
              left: 25,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                        fit: BoxFit.cover,
                        width: 40,
                        height: 60,
                        "assets/images/BrandAssets_Logos_02-NSymbol-removebg-preview.png"),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "TV Shows",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colorconstants.primarywhite),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Movies",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colorconstants.primarywhite),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "My List",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colorconstants.primarywhite),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              left: 130,
              right: 140,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colorconstants.primarywhite)),
                      child: Column(
                        children: [
                          Text(
                            "TOP",
                            style: TextStyle(
                                color: Colorconstants.primarywhite,
                                fontSize: 4),
                          ),
                          Text(
                            "10",
                            style: TextStyle(
                                color: Colorconstants.primarywhite,
                                fontSize: 6),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "#2 in India Today",
                      style: TextStyle(
                          color: Colorconstants.primarywhite,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 11,
        ),
        Container(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 62),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colorconstants.primarywhite,
                    ),
                    Text(
                      "My List",
                      style: TextStyle(color: Colorconstants.primarywhite),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NetflixVideoPlayer(),
                      ));
                },
                child: Container(
                  padding: EdgeInsetsDirectional.symmetric(
                      vertical: 10, horizontal: 8),
                  height: 46,
                  width: 116,
                  decoration: BoxDecoration(
                      color: Colorconstants.primarywhite,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.play_arrow),
                      Text(
                        "Play",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colorconstants.primaryBlack),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Colorconstants.primarywhite,
                    ),
                    Text(
                      "Info",
                      style: TextStyle(color: Colorconstants.primarywhite),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
