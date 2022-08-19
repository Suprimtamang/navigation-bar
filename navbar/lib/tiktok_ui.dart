import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 40,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.home,
            ),
            Icon(
              Icons.people_alt,
            ),
            Icon(
              Icons.add_box_rounded,
            ),
            Icon(
              Icons.message,
            ),
            Icon(
              Icons.person,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          ///lowermost content
          Container(
            color: Colors.black,
          ),

          //follow following text
          Positioned(
            child: Row(
              children: [
                Icon(
                  Icons.live_tv,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Following          For You ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 50,
                ),
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ],
            ),
          ),

          ///rightside for  profilecontainer & like , comment , bookmark , share , music button

          Positioned(
            right: 0,
            bottom: 170,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)),
                  width: 40,
                  height: 40,
                  child: Icon(Icons.person),
                ),
                SizedBox(
                  height: 15,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 30,
                ),
                Icon(
                  Icons.comment,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 30,
                ),
                Icon(
                  Icons.bookmark,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 30,
                ),
                Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(20)),
                  width: 40,
                  height: 40,
                  child: Icon(Icons.music_note),
                ),
              ],
            ),
          ),

          ///caption
          Positioned(
            left: 0,
            bottom: 20,
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 0)),
                        Text(
                          "@suprim_01",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.verified,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "1h ago",
                          style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 10,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "making tiktok UI as an assignment",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "#fyp #diy #keepexploring #suprimtamang:)",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
