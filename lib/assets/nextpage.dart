import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'dart:convert';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:skoleopgave/Fredagsopgave.dart';
import 'package:skoleopgave/assets/nextpage.dart';
import 'package:skoleopgave/main.dart';

class NextPage extends StatefulWidget {
  NnextPage createState() => NnextPage();
}

class NnextPage extends State<NextPage> {
  var _controllertype;
  var _controllernavn = TextEditingController();
  

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
            ListTile(
                title: const Text('Miow'),
                leading: Radio(
                  value: "Cat",
                  groupValue: _controllertype,
                  onChanged: (value) {
                    setState(() {
                      print('idk');
                      _controllertype = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Woof'),
                leading: Radio(
                  value: "Dog",
                  groupValue: _controllertype,
                  onChanged: (value) {
                    setState(() {
                      print('karla');
                      _controllertype = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Gone'),
                leading: Radio(
                  value: "Dad",
                  groupValue: _controllertype,
                  onChanged: (value) {
                    setState(() {
                      print('blank');
                      _controllertype = value;
                    });
                  },
                ),
              ),
            TextField(
              controller: _controllernavn,
            ),
            RaisedButton(
              onPressed: () => Navigator.pop(
                      context, _controllertype + ": " + _controllernavn.text),
              child: Text("asdsad"),
            ),
          ],
        ),
      ),
    );
  }
}
