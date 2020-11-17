import 'package:flutter/material.dart';
import 'package:skoleopgave/Calculator/Calculator.dart';
import 'package:skoleopgave/Secondpage.dart';
import 'package:get/get.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:skoleopgave/shortcuts.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'My App',
    home: FirstRoute(),
  ));
}



class FirstRoute extends StatelessWidget {
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
        actions: [],
        
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
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[ /* Main Page Start here! */
            BmwPiage(),
            OpgaveFredag(),
            Listpage(),
            AudiPiage(),
            ExtraPiage(),
          ],
        ),
      ),
      floatingActionButton: Builder(
        builder: (context) => FabCircularMenu(
          key: fabKey,
          // Cannot be `Alignment.center`
          alignment: Alignment.bottomRight,
          ringColor: Colors.black.withAlpha(25),
          ringDiameter: 500.0,
          ringWidth: 150.0,
          fabSize: 64.0,
          fabElevation: 8.0,
          fabIconBorder: CircleBorder(),
          fabColor: Colors.white,
          fabOpenIcon: Icon(Icons.menu, color: Colors.black),
          fabCloseIcon: Icon(Icons.close, color: Colors.black),
          fabMargin: const EdgeInsets.all(16.0),
          animationDuration: const Duration(milliseconds: 800),
          animationCurve: Curves.easeInOutCirc,
          children: <Widget>[
            RawMaterialButton(
              onPressed: () => Get.to(SecondPage()),
              shape: CircleBorder(),
              padding: const EdgeInsets.all(24.0),
              child: Icon(Icons.panorama, color: Colors.white),
            ),
            RawMaterialButton(
              onPressed: () => Get.to(Calculator()),
              shape: CircleBorder(),
              padding: const EdgeInsets.all(24.0),
              child: Icon(Icons.calculate, color: Colors.white),
            ),
            RawMaterialButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "i am groot",
                  content: Text('I AM GROOT!'),
                  onCancel: () => Get.offAll(FirstRoute()),
                  onConfirm: () => Get.back(),
                  textConfirm: 'submit',
                  confirmTextColor: Colors.white,
                );
              },
              shape: CircleBorder(),
              padding: const EdgeInsets.all(24.0),
              child: Icon(Icons.looks_3, color: Colors.white),
            ),
            RawMaterialButton(
              onPressed: () {
                _showSnackBar(
                    context, "You pressed 4. This one closes the menu on tap");
                fabKey.currentState.close();
              },
              shape: CircleBorder(),
              padding: const EdgeInsets.all(24.0),
              child: Icon(Icons.looks_4, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(milliseconds: 1000),
    ));
  }
}
