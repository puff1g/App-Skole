import 'package:flutter/material.dart';
import 'package:skoleopgave/Audi.dart';
import 'package:skoleopgave/Bmw.dart';
import 'package:skoleopgave/Calculator/Calculator.dart';
import 'package:skoleopgave/Secondpage.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'My App',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
        actions: [
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          children: [
            Spacer(),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Get.to(
            SecondPage(),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            InkWell(
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
                                child: Image(
                                    image: AssetImage('lib/assets/bmw.png'))),
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
            ),
            InkWell(
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
                                child: Image(
                                    image: AssetImage('lib/assets/audi.png'))),
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
            ),
            InkWell(
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
                                child: Image(
                                    image: AssetImage('lib/assets/bmw.png'))),
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
            ),
            InkWell(
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
                                child: Image(
                                    image: AssetImage('lib/assets/audi.png'))),
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
            ),
          ],
        ),
      ),
      /* drawer: Drawer( /* drawer heree  */
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Me Name is here atm'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Test'),
              onTap: () {
                Get.to(FirstRoute());
              },
            ),
            ListTile(
              title: Text('Calculator'),
              onTap: () {
                Get.to(Calculator());
              },
            ),
            ListTile(
              title: Text('TextForm'),
              onTap: () {
                Get.to(Calculator());
              },
            ),
          ],
        ),
      ), */
    );
  }
}
