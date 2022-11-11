import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SampleDesign extends StatelessWidget {
  // const SampleDesign({Key? key}) : super(key: key);
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  Future<Album> createAlbum(String username, String password) async {
    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/albums'),
      headers: <String, String>{
        'Content-Type': 'application/json;  charset=UTF-8',
      },
      body: jsonEncode(
          <String, String>{'username': username, 'password': password}),
    );
    if (response.statusCode == 201) {
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sample lang'),
        ),
        body: Column(children: [
          TextField(
            controller: username,
          ),
          TextField(
            controller: password,
          ),
          TextButton(onPressed: () {}, child: Text('Click Me')),
        ]));
  }
}

class Album {
  final int userId;
  final int id;
  final String tittle;

  const Album({
    this.userId,
    this.id,
    this.tittle,
  });
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      tittle: json['tittle'],
    );
  }
}