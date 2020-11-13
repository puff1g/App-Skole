import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class TextTrans extends StatefulWidget {
  TextTrans({Key key}) : super(key: key);

  @override
  _TextTransState createState() => _TextTransState();
}

class _TextTransState extends State<TextTrans> {
  bool lightTheme = true;
  Color currentColor = Colors.limeAccent;

  void changeColor(Color color) => setState(() => currentColor = color);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: lightTheme ? ThemeData.light() : ThemeData.dark(),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: GestureDetector(
              child: Text('Flutter Color Picker Example'),
              onDoubleTap: () => setState(() => lightTheme = !lightTheme),
            ),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      elevation: 3.0,
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              titlePadding: const EdgeInsets.all(0.0),
                              contentPadding: const EdgeInsets.all(0.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              content: SingleChildScrollView(
                                child: SlidePicker(
                                  pickerColor: currentColor,
                                  onColorChanged: changeColor,
                                  paletteType: PaletteType.rgb,
                                  enableAlpha: false,
                                  displayThumbColor: true,
                                  showLabel: false,
                                  showIndicator: true,
                                  indicatorBorderRadius:
                                      const BorderRadius.vertical(
                                    top: const Radius.circular(25.0),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: const Text('Change me again'),
                      color: currentColor,
                      textColor: useWhiteForeground(currentColor)
                          ? const Color(0xffffffff)
                          : const Color(0xff000000),
                    ),
                  ],
                ),
                RaisedButton(
                  onPressed: () => Navigator.pop(context, currentColor),
                  child: Text("Send Color"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
