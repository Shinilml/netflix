import 'package:flutter/material.dart';
import 'package:netflix/dummydb.dart';
import 'package:netflix/utils/constants/colorconstants.dart';
import 'package:netflix/views/videoplay_Screen/videoplay_screen.dart';

class custom_video_title_card extends StatelessWidget {
  // final String name;
  double height;
  double width;
  // String pics;
  custom_video_title_card({
    super.key,
    // required this.name,
    this.height = 161,
    this.width = 103,
    // required this.pics
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 12),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Popular on Netflix",
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
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoplayScreen(
                                showimage: Dummydb.popularlist[index]["image"]),
                          ));
                    },
                    child: Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  Dummydb.popularlist[index]["image"])),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 7,
                  ),
                  itemCount: Dummydb.popularlist.length,
                ),
              )
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Trending Now",
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
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoplayScreen(
                                showimage: Dummydb.trendinglist[index]
                                    ["image"]),
                          ));
                    },
                    child: Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  Dummydb.trendinglist[index]["image"])),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 7,
                  ),
                  itemCount: Dummydb.trendinglist.length,
                ),
              )
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Top 10 in India",
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
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoplayScreen(
                                showimage: Dummydb.top10list[index]["image"]),
                          ));
                    },
                    child: Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  Dummydb.top10list[index]["image"])),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 7,
                  ),
                  itemCount: Dummydb.top10list.length,
                ),
              )
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My List",
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
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoplayScreen(
                                showimage: Dummydb.mylist[index]["image"]),
                          ));
                    },
                    child: Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  NetworkImage(Dummydb.mylist[index]["image"])),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 7,
                  ),
                  itemCount: Dummydb.mylist.length,
                ),
              )
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Indian Movies",
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
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoplayScreen(
                                showimage: Dummydb.indianmovieslist[index]
                                    ["image"]),
                          ));
                    },
                    child: Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  Dummydb.indianmovieslist[index]["image"])),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 7,
                  ),
                  itemCount: Dummydb.indianmovieslist.length,
                ),
              )
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hollywood Movies & TV Shows",
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
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoplayScreen(
                                showimage: Dummydb.hollywoodmtvlist[index]
                                    ["image"]),
                          ));
                    },
                    child: Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  Dummydb.hollywoodmtvlist[index]["image"])),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 7,
                  ),
                  itemCount: Dummydb.hollywoodmtvlist.length,
                ),
              )
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Netflix Originals",
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
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoplayScreen(
                                showimage: Dummydb.originalslist[index]
                                    ["image"]),
                          ));
                    },
                    child: Container(
                      height: 251,
                      width: 154,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  Dummydb.originalslist[index]["image"])),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 7,
                  ),
                  itemCount: Dummydb.originalslist.length,
                ),
              )
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Watch it Again",
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
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoplayScreen(
                                showimage: Dummydb.watchagainlist[index]
                                    ["image"]),
                          ));
                    },
                    child: Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  Dummydb.watchagainlist[index]["image"])),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 7,
                  ),
                  itemCount: Dummydb.watchagainlist.length,
                ),
              )
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Releases",
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
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoplayScreen(
                                showimage: Dummydb.newlist[index]["image"]),
                          ));
                    },
                    child: Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  Dummydb.newlist[index]["image"])),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 7,
                  ),
                  itemCount: Dummydb.newlist.length,
                ),
              )
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Indian Shows",
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
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoplayScreen(
                                showimage: Dummydb.showindianlist[index]
                                    ["image"]),
                          ));
                    },
                    child: Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  Dummydb.showindianlist[index]["image"])),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 7,
                  ),
                  itemCount: Dummydb.showindianlist.length,
                ),
              )
            ],
          ),
          SizedBox(
            height: 22,
          )
        ],
      ),
    );
  }
}
