import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';

class TextTrans extends StatefulWidget {
  TextTrans({Key key}) : super(key: key);

  @override
  _TextTransState createState() => _TextTransState();
}

class _TextTransState extends State<TextTrans> {
  final tings = json.decode(Get.arguments.toString());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataTransfer"),
      ),
      body: Column(
        children: [
          Text(tings["ting"].toString(), style: TextStyle(fontSize: 25, color: Colors.black),),
          Text(tings["ting2"].toString(), style: TextStyle(fontSize: 25, color: Colors.black),),
        ],
      ),
    );
  }
}
