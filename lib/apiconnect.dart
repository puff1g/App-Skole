import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiCon extends StatefulWidget {
  ApiCon({Key key}) : super(key: key);

  @override
  _ApiConState createState() => _ApiConState();
}

class Person {
  final int id;
  final int birthYear;
  final String name;
  final String job;
  final String gender;
  final String relationshipStatus;
  final bool driversLicense;

  Person(
      {this.id,
      this.birthYear,
      this.name,
      this.job,
      this.gender,
      this.relationshipStatus,
      this.driversLicense});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      id: json['id'],
      birthYear: json['birthYear'],
      name: json['name'],
      job: json['job'],
      gender: json['gender'],
      relationshipStatus: json['relationshipStatus'],
      driversLicense: json['driversLicense'],
    );
  }
}

class _ApiConState extends State<ApiCon> {
  List<Person> list = List();
  var isLoading = false;

  _fetchData() async {
    setState(() {
      isLoading = true;
    });
    final response =
        await http.get("http://192.168.43.59:8085/JavaApiProjekt/api/person/8");
    if (response.statusCode == 200) {
      list = (json.decode(response.body) as List)
          .map((data) => new Person.fromJson(data))
          .toList();
      setState(() {
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load Persons');
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fetch Data JSON"),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(
            child: new Text("Fetch Data"),
            onPressed: _fetchData,
          ),
        ),
        body: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    contentPadding: EdgeInsets.all(10.0),
                    title: new Text(list[index].name),
                  );
                }));
  }
}
