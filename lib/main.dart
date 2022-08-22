import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Azkar.dart';
import 'package:flutter_application_2/MyAzkar/Data/DB_Hilber.dart';
import 'package:flutter_application_2/MyAzkar/Provider/dark_provider.dart';
import 'package:flutter_application_2/MyAzkar/Provider/db_Proveder.dart';
import 'package:flutter_application_2/MyAzkar/Provider/sp_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DB_Hilber.hilber.initDatabase();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await SPhelper.sPhelper.initSP();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path:
            'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('ar'),
        child: myApp()),
  );
}

class myApp extends StatelessWidget {
  bool? isDark = SPhelper.sPhelper.sp!.getBool('dark');
  @override
  Widget build(BuildContext context) {
    if (isDark == null) {
      SPhelper.sPhelper.sp!.setBool('dark', false);
    }
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider<db_Proveder>(create: (context) {
              return db_Proveder();
            }),
            Provider<Azkar>(create: (context) {
              return Azkar();
            }),
            ChangeNotifierProvider<SettingsProvider>(create: (context) {
              return SettingsProvider();
            }),
          ],
          child: Consumer<SettingsProvider>(
            builder: (context, provider, child) {
              return MaterialApp(
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                theme: provider.isDark! ? ThemeData.dark() : ThemeData.light(),
                home: Azkar(),
              );
            },
          ),
        );
      },
    );
  }
}
