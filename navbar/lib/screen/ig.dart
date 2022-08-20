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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.add),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Instagram",
                  style: TextStyle(fontSize: 35),
                ),
                SizedBox(
                  width: 120,
                ),
                Row(
                  children: [
                    Icon(Icons.favorite),
                    SizedBox(
                      width: 40,
                    ),
                    Icon(Icons.send),
                  ],
                ),
              ],
            ),

            Flexible(
                child: SizedBox(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
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
                      SizedBox(
                        width: 45,
                      ),
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
                ],
              ),
            )),

            Flexible(
              child: SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Your Story",
                        ),
                        Text(" __m_cgain"),
                        Text("_probably--prijesh-"),
                        Text(" mr_saurav"),
                        Text(
                          "Your Story",
                        ),
                        Text(" __m_cgain"),
                        Text("_probably--prijesh-"),
                        Text(" mr_saurav"),
                        //USERSECTION KO CHILDREN KO BRACKET
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //USERNAME SECTION
            Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      imgSrc,
                      height: 55,
                      width: 55,
                      fit: BoxFit.cover,
                    )),
                SizedBox(
                  width: 20,
                ),
                Text("suprim_01  "),
                Icon(
                  Icons.verified,
                  color: Colors.blue,
                  size: 18,
                ),
                SizedBox(
                  width: 200,
                ),
                Icon(Icons.more_horiz)
              ],
            ),

            //post section
            Image.network(
              imgSrc1,
              height: 400,
              width: 250,
              fit: BoxFit.fill,
            ),

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                ),
                Icon(Icons.favorite_border),
                SizedBox(
                  width: 25,
                ),
                Icon(Icons.insert_comment_outlined),
                SizedBox(
                  width: 25,
                ),
                Icon(Icons.send),
                SizedBox(
                  width: 250,
                ),
                Padding(padding: EdgeInsets.fromLTRB(0.0, 10.0, 5.0, 10.0)),
                Icon(Icons.bookmark)
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
                Text("Liked by"),
                Text(
                  " __m_cgain and others",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Text("1 min ago "),
              ],
            ),

            SizedBox(
              height: 40,
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
      ),
    );
  }
}
