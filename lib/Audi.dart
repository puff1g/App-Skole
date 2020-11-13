import 'package:flutter/material.dart';

class AudiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Audi - Page"),
      ),
      body: Container(
        child: Column(children: [

          Stack(
            children: [
            Image(image: AssetImage('lib/assets/s4b5.jpeg')),

            Positioned(
              right: 0,
              bottom: 0,
          child: FloatingActionButton(
              onPressed: () => null,
              child: Icon(Icons.favorite_border)
          )
      ),
            ],
      ),
      
          
          Container(
            width: size.width,
            child: Column(children: [
              
            ],),
          ),
        ],)
      ),
    );
  }
}
