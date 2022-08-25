import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    fetchDataFromServer();
  }

  String bodyText = "this is body";
  List<Comment> comment = [];
  fetchDataFromServer() async {
    print("fetching data from server");
    final serverLocation = "https://jsonplaceholder.typicode.com/comments";
    final uri = Uri.parse(serverLocation);
    print("serever url is $serverLocation");

    //Get
    print("1. fetching value from server");
    var response = http.get(uri);
    response.then((res) {
      print(res.statusCode);
      bodyText = res.body;

      final List decoded = json.decode(res.body);
      // comment = decoded;

      comment = decoded
          .map<Comment>((item) => Comment.convertJsonToComment(item))
          .toList();
      print("body text is-----------:$bodyText");
      setState(() {});
    });
    response.catchError((e) {
      print(e);
    });

    try {
      var response2 = await http.get(uri);
      print(response2.statusCode);
    } catch (e) {
      print(e);
    }
    print('2');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView.builder(
              itemCount: comment.length,
              itemBuilder: (context, index) {
                final Comment _comments = comment[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${index + 1}. " + _comments.email,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        SizedBox(height: 10),
                        Text(_comments.email),
                        // Divider()
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}

// {
//     "postId": 1,
//     "id": 1,
//     "name": "id labore ex et quam laborum",
//     "email": "Eliseo@gardner.biz",
//     "body": "laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium"
//   },
//we are modelling data here
class Comment {
  final int postId;
  final int id;
  final String name, email, body;
  //converting json data
  //constructor
  Comment(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body});

//map to objectf
  static Comment convertJsonToPost(Map json) {
    return Comment(
      postId: json["userId"],
      id: json["id"],
      name: json["name"],
      email: json["email"],
      body: json["body"],
    );
  }

// serialization
  Map toJson() {
    return {
      "postId": post,
      "id": id,
      "name": name,
      "email": email,
      "body": body,
    };
  }

  static convertJsonToComment(item) {}
}
