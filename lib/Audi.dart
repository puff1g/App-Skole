import 'package:flutter/material.dart';
import 'package:skoleopgave/Fredagsopgave.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

String nametext;
String size;
Color coloraa;

class Drag extends StatefulWidget {
  final Map jsonobj;
  const Drag({Key key, this.jsonobj}) : super(key: key);
  @override
  _DragState createState() => _DragState();
}

class _DragState extends State<Drag> {
  double top = 0;
  double left = 0;
  @override
  Widget build(BuildContext context) {
    nametext = widget.jsonobj['text'];
    coloraa = widget.jsonobj['color'];
    size = widget.jsonobj['size'];
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Draggable(
          child: Container(
            padding: EdgeInsets.only(top: top, left: left),
            child: DragItem(),
          ),
          feedback: Container(
            padding: EdgeInsets.only(top: top, left: left),
            child: DragItem(),
          ),
          childWhenDragging: Container(
            padding: EdgeInsets.only(top: top, left: left),
            child: DragItem(),
          ),
          onDragCompleted: () {},
          onDragEnd: (drag) {
            setState(() {
              top = top + drag.offset.dy < 0 ? 0 : top + drag.offset.dy;
              left = left + drag.offset.dx < 0 ? 0 : left + drag.offset.dx;
            });
          },
        ),
      ),
    );
  }
}

class DragItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      nametext,
      style: TextStyle(fontSize: double.parse(size.toString()), color: coloraa),
    );
  }
}
