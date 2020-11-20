import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  NnextPage createState() => NnextPage();
}

class NnextPage extends State<NextPage> {
  var _textController = TextEditingController();
  var _textSizeController = TextEditingController();
  Color _colorController;
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
            TextField(
              controller: _textController,
            ),
            ListTile(
              title: const Text('Red'),
              leading: Radio(
                value: Colors.red,
                groupValue: _colorController,
                onChanged: (value) {
                  setState(() {
                    print('Red');
                    _colorController = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Blue'),
              leading: Radio(
                value: Colors.blue,
                groupValue: _colorController,
                onChanged: (value) {
                  setState(() {
                    print('Blue');
                    _colorController = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Green'),
              leading: Radio(
                value: Colors.green,
                groupValue: _colorController,
                onChanged: (value) {
                  setState(() {
                    print('Green');
                    _colorController = value;
                  });
                },
              ),
            ),
            Text("TextSize"),
            TextField(
              controller: _textSizeController,
            ),
            RaisedButton(
              onPressed: () {
                var json = {
                  "text": _textController.text,
                  "size": _textSizeController.text,
                  "color": _colorController
                };

                print(json);
                Navigator.pop(context, json);
              },
              child: Text("Send Data"),
            ),
          ],
        ),
      ),
    );
  }
}
