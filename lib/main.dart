import 'package:flutter/material.dart';
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
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
              color: Colors.red,
              child: Column(
                children: [
                  Text("Title"),
                  Container(
                    width: size.width / 4,
                    child: Center(
                        child: Text(
                            "Anim amet eu consequat mollit occaecat excepteur proident ea ullamco elit nulla occaecat ut.")),
                  ),
                ],
              ),
            ),
            Container(
              width: 160.0,
              color: Colors.blue,
              child: Column(
                children: [
                  Text("Title"),
                  Container(
                    width: size.width / 4,
                    child: Center(
                        child: Text(
                            "Anim amet eu consequat mollit occaecat excepteur proident ea ullamco elit nulla occaecat ut.")),
                  ),
                ],
              ),
            ),
            Container(
              width: 160.0,
              color: Colors.pink,
              child: Column(
                children: [
                  Text("Title"),
                  Container(
                    width: size.width / 4,
                    child: Center(
                        child: Text(
                            "Anim amet eu consequat mollit occaecat excepteur proident ea ullamco elit nulla occaecat ut.")),
                  ),
                ],
              ),
              
            ),
            Container(
              width: 160.0,
              color: Colors.yellow,
              child: Column(
                children: [
                  Text("Title"),
                  Container(
                    width: size.width / 4,
                    child: Center(
                        child: Text(
                            "Anim amet eu consequat mollit occaecat excepteur proident ea ullamco elit nulla occaecat ut.")),
                  ),
                ],
              ),
              
            ),
          ],
        ),
      ),
      drawer: Drawer(
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
      ),
    );
  }
}
