import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'dart:convert';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:skoleopgave/assets/nextpage.dart';
import 'package:skoleopgave/assets/texttranfer.dart';
import 'package:skoleopgave/main.dart';

class Ffredagsopgave extends StatefulWidget {
  Fredagsopgave createState() => Fredagsopgave();
}

class Fredagsopgave extends State<Ffredagsopgave> {
  final coloree = json.decode(Get.arguments.toString());
  var _group = "Im dumb...";
  Color thiscolor = Colors.white;
  void changeColor(Color color) => setState(() => thiscolor = color);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Fredagsopgave"),
      ),
      body: Container(
        color: Colors.white,
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            /* Text(colorre["name".toString()]),
            Text(colorre["color".toString()]), */
            Text(
              "Get Name and color",
            ),
            RaisedButton(
                child: Text("Get Ones Name"),
                onPressed: () => _navigateAndDisplaySelection(context)),

            /* Text(
              "$_type : $_name and he is $_color",
            ), */
            Container(
              color: thiscolor,
              child: Text(
                _group, style: TextStyle(color: Colors.white)
              ),
            ),
            RaisedButton(
              child: Text("Get Ones Color",),
              onPressed: () => _colorchangee(context),
            ),
          ],
        ),
      ),
    );
  }

  _colorchangee(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TextTrans()),
    );

    setState(() {
      if (result != null) {
        thiscolor = result;
      } else {
        thiscolor = Colors.white;
      }
    });
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NextPage()),
    );

    setState(() {
      if (result != null) {
        _group = "$result";
      } else {
        _group = "Here comes the name";
      }
    });
  }
}
