import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/AzkarUI.dart';
import 'package:flutter_application_2/Floating.dart';
import 'package:flutter_application_2/MyDrawer.dart';
import 'package:flutter_application_2/Scrren2/AzkarMaslm.dart';

ValueNotifier<bool> isDark = ValueNotifier<bool>(false);

class Azkar extends StatefulWidget {
  @override
  State<Azkar> createState() => _AzkarState();
}

class _AzkarState extends State<Azkar> {
  ChangeTheme() {
    isDark.value ? isDark.value = false : isDark.value = true;
    isDark.notifyListeners;
    setState(() {});
  }

  late bool dart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      floatingActionButton: floating(),
      appBar: AppBar(
          title: Text("القائمة الرئيسية".tr()),
          backgroundColor: const Color.fromARGB(255, 67, 160, 236),
          actions: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width / 9.5,
            ),
            GestureDetector(
              onTap: () {
                //  dart = ChangeTheme(Azkar.isDart);
                ChangeTheme();
              },
              child: Icon(
                Icons.brightness_3,
                color: Colors.white,
              ),
              // onPressed: () {

              //   //setState(() {});
              // },
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 22,
            ),
            GestureDetector(
              onTap: () {
                if (context.locale.toString() == "en") {
                  context.setLocale(const Locale("ar"));
                } else {
                  context.setLocale(const Locale("en"));
                }
              },
              child: const Icon(Icons.language),
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
