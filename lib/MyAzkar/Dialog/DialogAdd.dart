import 'package:flutter/material.dart';

class Dialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("إضافة ذكر جديد"),
      content: const Text(": إن اردت ,ستظهر مع الأذكار التلقائية "),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context, "Cancel"),
            child: const Text("إغلاق")),
        TextButton(
          onPressed: () => Navigator.pop(context, "Add"),
          child: const Text("إضف"),
        )
      ],
    );
  }
}
//  FlatButton(onPressed: (){}, child: const Text("أضف"))
//       ,FlatButton(onPressed: (){}, child: const Text("إلغاءالاأمر"))