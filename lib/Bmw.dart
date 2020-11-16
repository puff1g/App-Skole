import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skoleopgave/assets/texttranfer.dart';

class BmwPage extends StatelessWidget {
    var _controller1 = TextEditingController();
    var _controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("BMW - Page"),
      ),
      body: Container(
          child: Column(
        children: [
          Stack(
            children: [
              Image(image: AssetImage('lib/assets/E60-m5.jpg')),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: FloatingActionButton(
                      onPressed: () {
                        Get.snackbar('title', 'message');
                      },
                      child: Icon(Icons.favorite_border))),
            ],
          ),
          Row(
            children: [
              Container(
                width: size.width,
                height: 200,
                color: Colors.white,
                child: Column(
                  children: [
                    TextField(
                      controller: _controller1,
                    ),
                    TextField(
                      controller: _controller2,
                    ),
                    RaisedButton(
                      onPressed: () => Get.to(TextTrans(),
                          arguments: jsonEncode({
                            "ting": _controller1.text,
                            "ting2": _controller2.text,
                          })),
                      child: Text("asdsad"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
