import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Fredagsopgave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Audi - Page"),
      ),
      body: Container(
        color: Colors.white,
        height: size.height,
        width: size.width,
      ),
    );
  }
}
