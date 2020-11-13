import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

class Listview extends StatefulWidget {
  @override
  ListviewState createState() => new ListviewState();
}

class ListviewState extends State<Listview> {
  List data;

  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {"Accept": "application/json"});

    this.setState(() {
      data = json.decode(response.body);
    });
    print(data[1]["title"]);

    return "Success!";
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Listviews"),
      ),
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                print("Fak");
              },
              child: Container(
                color: Colors.white,
                width: 300,
                height: 150,
                child: Slidable(
                  actionPane: SlidableDrawerActionPane(),
                  actionExtentRatio: 0.25,
                  child: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://i.pinimg.com/originals/b6/5b/c6/b65bc6010f2faf1a11f7f8586b02c58d.jpg",
                        ),
                        foregroundColor: Colors.white,
                      ),
                      title: Flexible(
                          child: RichText(
                              overflow: TextOverflow.ellipsis,
                              strutStyle: StrutStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  text: data[index]['title']))),
                      subtitle: Text(data[index]["body"]),
                    ),
                  ),
                  actions: <Widget>[
                    IconSlideAction(
                      caption: 'Archive',
                      color: Colors.blue,
                      icon: Icons.archive,
                      onTap: () => null,
                    ),
                    IconSlideAction(
                      caption: 'Share',
                      color: Colors.indigo,
                      icon: Icons.share,
                      onTap: () => null,
                    ),
                  ],
                  secondaryActions: <Widget>[
                    IconSlideAction(
                      caption: 'More',
                      color: Colors.black45,
                      icon: Icons.more_horiz,
                      onTap: () => Get.snackbar(
                        'No',
                        'Just no.... 😠',
                        backgroundColor: Colors.black,
                        colorText: Colors.white,
                      ),
                    ),
                    IconSlideAction(
                      caption: 'Delete',
                      color: Colors.red,
                      icon: Icons.delete,
                      onTap: () => Get.defaultDialog(title: 'Title!!',),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
