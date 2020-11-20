import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skoleopgave/Audi.dart';
import 'dart:convert';
import 'package:skoleopgave/assets/nextpage.dart';
import 'package:skoleopgave/assets/texttranfer.dart';

class Ffredagsopgave extends StatefulWidget {
  Fredagsopgave createState() => Fredagsopgave();
}

class Fredagsopgave extends State<Ffredagsopgave> {
  var _text = "";
  var _textSize = "";
  Color _color = Colors.white;
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
              "Get Name and Size",
            ),
            RaisedButton(
                child: Text("Get Ones Name With size"),
                onPressed: () => _navigateAndDisplaySelection(context)),

            /* Text(
              "$_type : $_name and he is $_color",
            ), */
            Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        constraints:
                            BoxConstraints(minWidth: 100, maxWidth: 200),
                        child: Expanded(
                          child: Text(
                            'Name:',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          _text,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        constraints:
                            BoxConstraints(minWidth: 100, maxWidth: 200),
                        child: Expanded(
                          child: Text(
                            'Color:',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          _color.toString(),
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        constraints:
                            BoxConstraints(minWidth: 100, maxWidth: 200),
                        child: Expanded(
                          child: Text(
                            'FontSize:',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          _textSize,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ]),
              ],
            ),
            RaisedButton(
              child: Text(
                "Objekt - Graphics",
              ),
              onPressed: () {
                var json = {
                  "text": _text,
                  "size": _textSize,
                  "color": _color,
                };
                Map<String, Object> jsonobj = json;

                print(jsonobj);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Drag(jsonobj: jsonobj)),
                );
              },
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
        _text = result['text'];
        _textSize = result['size'];
        _color = result['color'];
        print("$result");
      } else {
        _group = "Here comes the name";
      }
    });
  }
}
