import 'package:flutter/material.dart';
import 'package:netflix/dummydb.dart';
import 'package:netflix/utils/constants/colorconstants.dart';
import 'package:netflix/views/search_Screen/widgets/custom_video_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.primaryBlack,
      appBar: AppBar(
        backgroundColor: Colorconstants.primarygreyshade2,
        title: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colorconstants.primarygreyshade,
              ),
              hintText: "Search for show,movie,genre,e.t.c.",
              hintStyle: TextStyle(
                  fontSize: 15, color: Colorconstants.primarygreyshade),
              suffixIcon: Icon(
                Icons.mic,
                color: Colorconstants.primarygreyshade,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 15)),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(
          //   height: 21,
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 10),
            child: Text(
              "Top Searches",
              style: TextStyle(
                  color: Colorconstants.primarywhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 27),
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => CustomVideoCard(
                      pic: Dummydb.topsearch[index]["image"],
                      shows: Dummydb.topsearch[index]["netflixshow"],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 3,
                    ),
                itemCount: Dummydb.topsearch.length),
          )
        ],
      ),
    );
  }
}
