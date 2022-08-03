import 'package:flutter/material.dart';

class DialogAUD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("تعديل ذكر "),
      content: const Text(": إن اردت ,ستظهر مع الأذكار التلقائية "),
      actions: [
        FlatButton(onPressed: () {}, child: const Text("حفظ")),
        FlatButton(onPressed: () {}, child: const Text("إلغاءالاأمر")),
        FlatButton(onPressed: () {}, child: const Text("حذف"))
      ],
    );
  }
}
