import 'package:flutter/material.dart';
import 'package:skoleopgave/Audi.dart';
import 'package:skoleopgave/Bmw.dart';
import 'package:get/get.dart';

/* Design / prefixes */




class BmwPiage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(BmwPage()),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        child: Image(image: AssetImage('lib/assets/bmw.png'))),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "BMW",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: FractionallySizedBox(
                    widthFactor: 0.6,
                    child: Text(
                      "Text here for filler info just to make sure it works",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
            height: 200.0,
            margin: const EdgeInsets.only(bottom: 6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AudiPiage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(AudiPage()),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        child: Image(image: AssetImage('lib/assets/audi.png'))),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Audi",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: FractionallySizedBox(
                    widthFactor: 0.6,
                    child: Text(
                      "Text here for filler info just to make sure it works",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
            height: 200.0,
            margin: const EdgeInsets.only(bottom: 6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExtraPiage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(AudiPage()),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        child: Image(image: AssetImage('lib/assets/audi.png'))),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Audi",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: FractionallySizedBox(
                    widthFactor: 0.6,
                    child: Text(
                      "Text here for filler info just to make sure it works",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
            height: 200.0,
            margin: const EdgeInsets.only(bottom: 6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


