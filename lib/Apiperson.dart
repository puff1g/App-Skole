import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:rflutter_alert/rflutter_alert.dart';

class ApiPerson extends StatefulWidget {
  final int IuserID;
  const ApiPerson({Key key, this.IuserID}) : super(key: key);

  @override
  _ApiPersonState createState() => _ApiPersonState();
}

class _ApiPersonState extends State<ApiPerson> {
  var isLoading = false;
  var oUser;
  var pageTitle = "Loading....";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fetch Data JSON"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      child: Center(child: Text(widget.IuserID.toString())),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      child: Center(child: Text(widget.IuserID.toString())),
                    ),
                  ),
                ],
              )),
              Row(
                children: [
                  RaisedButton(
                      color: Colors.red,
                      child: Text('Fjern'),
                      onPressed: () => {
                            Alert(
                              context: context,
                              type: AlertType.warning,
                              title: "ARE YOU SURE?🤔",
                              desc:
                                  "Are you really going to remove this poor soul?",
                              buttons: [
                                DialogButton(
                                  color: Colors.blue,
                                  child: Text(
                                    "No sorry",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  onPressed: () => Navigator.pop(context),
                                ),
                                DialogButton(
                                  color: Colors.red,
                                  child: Text(
                                    "Im sure!",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  onPressed: () async {
                                    final response = await http.delete(
                                      "http://192.168.43.59:8085/JavaApiProjekt/api/person/${widget.IuserID}",
                                      headers: <String, String>{
                                        'Content-Type':
                                            'application/json; charset=UTF-8',
                                      },
                                    );

                                    if (response.statusCode == 200) {
                                      oUser = response.body;
                                      setState(() {
                                        isLoading = false;
                                      });
                                    } else {
                                      throw Exception(
                                          'Failed to delete Person');
                                    }
                                  },
                                )
                              ],
                            ).show(),
                          }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
