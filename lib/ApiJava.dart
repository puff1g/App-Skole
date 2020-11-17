/* import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

Future<Person> fetchPerson() async {
  final response = await http.get(
    'http://192.168.43.59:8085/JavaApiProjekt/api/person/8',
  ); // localhost swap med legit ip fx. 10.0.2.2:"port" http://192.168.43.59:8085/JavaApiProjekt/api/person/8

  if (response.statusCode == 200) {
    /* 200 = Okay / good to go */
    print('Works! 🙋');
    return Person.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load😥');
  }
}

List<Person> decodePerson(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Person>((json) => Person.fromMap(json)).toList();
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

  factory Person.fromMap(Map<String, dynamic> json) {
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

class ApiJava extends StatelessWidget {
  final List<Person> items;

  PersonList({Key key, this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return PersonList(items: items[index]);
      },
    );
  }
}
 */