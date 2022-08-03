import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Azkar.dart';
import 'package:flutter_application_2/MyAzkar/Data/DB_Hilber.dart';
import 'package:flutter_application_2/MyAzkar/Provider/db_Proveder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DB_Hilber.hilber.initDatabase();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path:
            'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('en'),
        child: myApp()),
  );
}

class myApp extends StatefulWidget {
  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider<db_Proveder>(create: (context) {
              return db_Proveder();
            })
          ],
          child: MaterialApp(
            theme: isDark.value ? ThemeData.dark() : ThemeData.light(),
            home: Azkar(),
          ),
        );
      },
    );
  }
}
