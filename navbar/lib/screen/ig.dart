import 'package:flutter/material.dart';

//profile picture
final String imgSrc =
    "https://pbs.twimg.com/media/FZjgTiiaQAIdCBS?format=jpg&name=large";
//friends image

final String imgSrc2 =
    "https://pbs.twimg.com/media/FZdmE3waUAAbsnh?format=jpg&name=360x360";
final String imgSrc3 =
    "https://pbs.twimg.com/media/FZdmdkbakAAsg7G?format=jpg&name=medium";
final String imgSrc4 =
    "https://pbs.twimg.com/media/FZdml7XaIAE9pv7?format=jpg&name=large";

//post image
final String imgSrc1 =
    "https://pbs.twimg.com/media/FZdhpFSaAAAVGWg?format=jpg&name=4096x4096";

class UserSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.add),
                SizedBox(
                  width: 15,
                ),
                Text("Instagram"),
                Row(
                  children: [
                    Icon(Icons.favorite),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.send),
                  ],
                ),
              ],
            ),
            Row(
              //keeping three items in a row
              children: [
                //story WALA SECTION
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    imgSrc,
                    height: 65,
                    width: 65,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                //second
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    imgSrc2,
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                //third
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    imgSrc3,
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                //fourth
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    imgSrc4,
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Your Story"),
                Text(" __m_cgain"),
                Text("_probably--prijesh-"),
                Text(" mr_saurav"),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(300),
                    child: Image.network(
                      imgSrc,
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    )),
                Text("suprim_01"),
                SizedBox(
                  width: 150,
                ),
                Icon(Icons.more_horiz)
              ],
            ),
            ClipRRect(
              child: Image.network(
                imgSrc1,
                height: 300,
                width: 250,
                fit: BoxFit.fill,
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox(
                      width: 25,
                    ),
                    Icon(Icons.insert_comment_outlined),
                    SizedBox(
                      width: 25,
                    ),
                    Icon(Icons.send),
                  ],
                ),
                SizedBox(
                  width: 220,
                ),
                Padding(padding: EdgeInsets.fromLTRB(0.0, 10.0, 5.0, 10.0)),
                Icon(Icons.bookmark)
              ],
            ),
            Row(
              children: [
                Text("Liked by"),
                Text(
                  " __m_cgain and others",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Text("August 8"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.home),
                Icon(Icons.search),
                Icon(Icons.tv),
                Icon(Icons.shop),
                Icon(Icons.account_box),
              ],
            ),
          ],
        ),

//hunuparne syntax
      ),
    );
  }
}
