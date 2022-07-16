import 'package:flutter/material.dart';
import 'package:flutter_application_2/AzkarModels/DoaaWidget.dart';
import 'package:flutter_application_2/data/data.dart';

class AllNewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: AzkrList.length,
            itemBuilder: ((context, index) {
              return DoaaWidget(AzkrList[index].doaa);
            })));
  }
}
