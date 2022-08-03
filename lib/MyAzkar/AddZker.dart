import 'package:flutter/material.dart';
import 'package:flutter_application_2/MyAzkar/Body.dart';
import 'package:flutter_application_2/MyAzkar/MyFloating.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class AddZker extends StatefulWidget {
  @override
  State<AddZker> createState() => _AddZkerState();
}

class _AddZkerState extends State<AddZker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: myFloating(),
      appBar: AppBar(
          title: const Text("أذكار المسلم "),
          elevation: 0,
          backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.brightness_3,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ]),
      body: body(),
    );
  }
}
