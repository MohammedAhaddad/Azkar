import 'package:flutter/material.dart';
import 'package:flutter_application_2/AzkarUI.dart';
import 'package:flutter_application_2/Floating.dart';
import 'package:flutter_application_2/MyDrawer.dart';
import 'package:flutter_application_2/Scrren2/AzkarMaslm.dart';

class Azkar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      floatingActionButton: floating(),
      appBar: AppBar(
          title: const Text("أذكار المسلم "),
          backgroundColor: const Color.fromARGB(255, 67, 160, 236),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.brightness_3,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.notifications_active,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            )
          ]),
      body: AzkarUI(),
    );
  }
}
