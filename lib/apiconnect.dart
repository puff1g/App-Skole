import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

Future<Person> fetchPerson() async {
  final response =
      await http.get('http://localhost:8085/JavaApiProjekt/api/person/8');

  if (response.statusCode == 200) {
    /* 200 = Okay / good to go */
    print('Works! 🙋');
    return Person.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load😥');
  }
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

class ApiCon extends StatefulWidget {
  ApiCon({Key key}) : super(key: key);

  @override
  _ApiConState createState() => _ApiConState();
}

class _ApiConState extends State<ApiCon> {
  Future<Person> futurePerson;
  @override
  void initState() {
    super.initState();
    futurePerson = fetchPerson();
  }

  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder<Person>(
      future: futurePerson,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data.name);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return CircularProgressIndicator();
      },
    ));
  }
}
