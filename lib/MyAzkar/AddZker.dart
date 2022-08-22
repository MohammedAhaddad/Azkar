import 'package:easy_localization/easy_localization.dart';
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
        title: context.locale.toString == 'ar'
            ? Text("أذكار المسلم".tr())
            : Expanded(
                child: Text(
                "أذكار المسلم".tr(),
                style: TextStyle(fontSize: 15),
              )),
        elevation: 0,
        backgroundColor: Colors.blue,
      ),
      body: body(),
    );
  }
}
