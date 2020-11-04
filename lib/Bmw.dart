import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BmwPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("BMW - Page"),
      ),
      body: Container(
        child: Column(children: [

          Stack(
            children: [
            Image(image: AssetImage('lib/assets/E60-m5.jpg')),

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
