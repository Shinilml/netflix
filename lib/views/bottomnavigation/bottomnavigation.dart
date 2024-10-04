import 'package:flutter/material.dart';
import 'package:netflix/utils/constants/colorconstants.dart';
import 'package:netflix/views/More_Screen/more_screen.dart';
import 'package:netflix/views/coming_Soon_Screen/comingsoonscreen.dart';
import 'package:netflix/views/downloads_screen/downloads_screen.dart';
import 'package:netflix/views/homescreen/homescreen.dart';
import 'package:netflix/views/search_Screen/search_screen.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int selectedtab = 0;
  List screen = [
    Homescreen(),
    SearchScreen(),
    Comingsoonscreen(),
    DownloadsScreen(),
    MoreScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedtab],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colorconstants.primaryBlackshade,
          currentIndex: selectedtab,
          onTap: (value) {
            selectedtab = value;
            setState(() {});
          },
          // selectedItemColor: ColorsConstants.PrimaryColor,
          selectedItemColor: Colorconstants.primarywhite,
          unselectedItemColor: Colorconstants.primarygreyshade,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                // color: Colorconstants.primarygreyshade,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  //color: Colorconstants.primarygreyshade,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_collection_outlined,
                  //color: Colorconstants.primarygreyshade,
                ),
                label: "Coming Soon"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.download,
                  // color: Colorconstants.primarygreyshade,
                ),
                label: "Downloads"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  // color: Colorconstants.primarygreyshade,
                ),
                label: "More"),
          ]),
    );
  }
}
