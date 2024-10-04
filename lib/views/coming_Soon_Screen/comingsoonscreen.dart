import 'package:flutter/material.dart';
import 'package:netflix/utils/constants/colorconstants.dart';
import 'package:netflix/views/coming_Soon_Screen/widgets/comingsoon_videocard.dart';

class Comingsoonscreen extends StatelessWidget {
  const Comingsoonscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.primaryBlack,
      appBar: AppBar(
        backgroundColor: Colorconstants.primaryBlack,
        leading: Icon(
          Icons.notifications,
          size: 19,
        ),
        title: Text(
          "Notification",
          style: TextStyle(
              color: Colorconstants.primarywhite,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 16),
          children: [
            NewArrivalSection(),
            SizedBox(
              height: 25,
            ),
            comingsoon_videocard(
              pic:
                  "https://qph.cf2.quoracdn.net/main-qimg-8a684e29c906aaf8874155af868f4a38-lq",
              title: "Dark",
            ),
            SizedBox(
              height: 17,
            ),
            comingsoon_videocard(
                pic:
                    "https://m.media-amazon.com/images/M/MV5BMjE2N2MyMzEtNmU5NS00OTI0LTlkNTMtMWM1YWYyNmU4NmY0XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
                title: "Stranger Things"),
            SizedBox(
              height: 17,
            ),
            comingsoon_videocard(
                pic:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqsOWNiDIZDfXqkiWOzw8Z-z1CRNsPu58qPQ&s",
                title: "Witcher"),
            SizedBox(
              height: 17,
            ),
          ],
        ),
      ),
    );
  }

  Container NewArrivalSection() {
    return Container(
      height: 130,
      width: double.infinity,
      color: Colorconstants.primarygreyshade,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Container(
                  height: 55,
                  width: 113,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/en/8/8e/El_Chapo_Netflix_poster.jpg"))),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New Arrival",
                      style: TextStyle(
                          color: Colorconstants.primarywhite,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    Text(
                      "El Chapo",
                      style: TextStyle(
                          color: Colorconstants.primarywhite,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    Text(
                      "Nov 6",
                      style: TextStyle(
                          color: Colorconstants.primarygrey,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Container(
                  height: 55,
                  width: 113,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://m.media-amazon.com/images/S/pv-target-images/70942e79b4daa148335d776bb74f446ebb07968c549de80f13510fb8453c47b7.jpg"))),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New Arrival",
                      style: TextStyle(
                          color: Colorconstants.primarywhite,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    Text(
                      "Peaky Blinders",
                      style: TextStyle(
                          color: Colorconstants.primarywhite,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    Text(
                      "Nov 6",
                      style: TextStyle(
                          color: Colorconstants.primarygrey,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
