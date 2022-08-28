import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';

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

String? stringResponse;
Map? mapResponse;
List listResponse = [];

class UserSection extends StatefulWidget {
  @override
  State<UserSection> createState() => _UserSectionState();
}

class _UserSectionState extends State<UserSection> {
  Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse(
        "https://pixabay.com/api/?key=29447421-9244ca6ce36069b8367b5865e&q=yellow+flowers&image_type=photo&pretty=true"));
    if (response.statusCode == 200) {
      setState(() {
        stringResponse = response.body;
        mapResponse = json.decode(response.body);
      });
    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("build called");
    return Scaffold(
        body: ListView.builder(
      itemCount: listResponse.length,
      itemBuilder: ((context, index) {
        final item = [index];
        return InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(children: [
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
                  Image.network(listResponse[index]['pageUrl']),

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
                      Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 10.0, 5.0, 10.0)),
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
                        " madhav and others",
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

                  //ending point
                ]),
              ),
            ));
      }),
    ));
  }
}
