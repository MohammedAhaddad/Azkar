import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/MyAzkar/Provider/db_Proveder.dart';
import 'package:flutter_application_2/MyAzkar/models/ZkerModels.dart';
import 'package:provider/provider.dart';

class myFloating extends StatelessWidget {
  String content = "";
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: const Text("إضافة ذكر جديد"),
                content: const Text(": إن اردت ,ستظهر مع الأذكار التلقائية "),
                actions: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      onChanged: (value) {
                        content = value;
                      },
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'أكتب هنا ما تريد',
                          icon: Icon(Icons.add)),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.2,
                      ),
                      TextButton(
                          onPressed: () => Navigator.pop(context, "Cancel"),
                          child: const Text("إغلاق")),
                      TextButton(
                        onPressed: () async {
                          ZkerModel z = ZkerModel(ZkerName: content);
                          await Provider.of<db_Proveder>(context, listen: false)
                              .createNewZker(z);
                          log(content);
                          Navigator.of(context).pop();
                        },
                        child: const Text("إضف"),
                      )
                    ],
                  )
                ],
              )),
      backgroundColor: Colors.blue,
      child: Icon(
        Icons.add,
        color: Colors.white,
        size: 35,
      ),
    );
  }
}
