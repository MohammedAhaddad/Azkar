import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/AzkarModels/AllZker.dart';
import 'package:flutter_application_2/EveningAzkar/AllEvening.dart';
import 'package:flutter_application_2/Mosk/AllMoskZker.dart';
import 'package:flutter_application_2/MyAzkar/Provider/dark_provider.dart';
import 'package:flutter_application_2/Prayer/AllPrayerZker.dart';
import 'package:flutter_application_2/Sleep/AllSleepZker.dart';
import 'package:flutter_application_2/wake_up_Azkar/AllWakeUP.dart';
import 'package:provider/provider.dart';

class AzkarMaslm extends StatelessWidget {
  String qr =
      "https://png.pngtree.com/png-clipart/20210530/original/pngtree-reciting-quran-black-icon-png-image_6336761.jpg";
  String man =
      "https://cdn.icon-icons.com/icons2/2922/PNG/512/ramadhan_moslem_fasting_islam_man_pray_icon_183502.png";
  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(builder: (context, provider, x) {
      return Scaffold(
          appBar: AppBar(
              title: context.locale.toString() == null
                  ? Text("أذكار المسلم".tr())
                  : Expanded(
                      child: Text(
                        "أذكار المسلم".tr(),
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
              backgroundColor: provider.isDark!
                  ? const Color.fromARGB(255, 91, 100, 99)
                  : const Color.fromARGB(255, 67, 160, 236),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // do something
                  },
                ),
              ]),
          body: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromARGB(255, 19, 24, 82),
                child: Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 95),
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 9),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  color: Colors.white,
                                  height:
                                      MediaQuery.of(context).size.height / 6.5,
                                  width:
                                      MediaQuery.of(context).size.width / 2.1,
                                  child: Center(
                                    child: new RaisedButton(
                                      onPressed: () => {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  AllNewsScreen(), //
                                            ))
                                      },
                                      child: Row(children: [
                                        const SizedBox(
                                          width: 23,
                                        ),
                                        CachedNetworkImage(
                                            imageUrl:
                                                "https://cdn.icon-icons.com/icons2/2527/PNG/512/sunrise_weather_icon_151777.png")
                                      ]),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width:
                                      MediaQuery.of(context).size.width / 2.1,
                                  color: const Color.fromARGB(255, 91, 100, 99),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      context.locale.toString == "ar"
                                          ? Text("أذكار الصباح".tr(),
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold))
                                          : Expanded(
                                              child: Text("أذكار الصباح".tr(),
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Container(
                                  color: Colors.white,
                                  height:
                                      MediaQuery.of(context).size.height / 6.5,
                                  width:
                                      MediaQuery.of(context).size.width / 2.1,
                                  child: Center(
                                    child: new RaisedButton(
                                      onPressed: () => {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  AllWakeUPScreen(),
                                            ))
                                      },
                                      child: Row(children: [
                                        const SizedBox(
                                          width: 28,
                                        ),
                                        CachedNetworkImage(
                                            imageUrl:
                                                "https://cdn.icon-icons.com/icons2/2952/PNG/512/lantern_icon_184536.png")
                                      ]),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width:
                                      MediaQuery.of(context).size.width / 2.1,
                                  color: const Color.fromARGB(255, 91, 100, 99),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      context.locale.toString() == "ar"
                                          ? Text("أذكار الاستيقاظ".tr(),
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold))
                                          : Expanded(
                                              child: Text(
                                                  "أذكار الاستيقاظ".tr(),
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold)))
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                        //end
                        ,
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  color: Colors.white,
                                  height:
                                      MediaQuery.of(context).size.height / 6.5,
                                  width:
                                      MediaQuery.of(context).size.width / 2.1,
                                  child: Center(
                                    child: new RaisedButton(
                                      onPressed: () => {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  AllSleepScreen(),
                                            ))
                                      },
                                      child: Row(children: [
                                        const SizedBox(
                                          width: 23,
                                        ),
                                        CachedNetworkImage(
                                            imageUrl:
                                                "https://cdn.icon-icons.com/icons2/2922/PNG/128/mosque_ramadhan_moslem_fasting_islam_icon_183472.png")
                                      ]),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width:
                                      MediaQuery.of(context).size.width / 2.1,
                                  color: const Color.fromARGB(255, 91, 100, 99),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      context.locale.toString() == "ar"
                                          ? Text("أذكار النوم".tr(),
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold))
                                          : Expanded(
                                              child: Text("أذكار النوم".tr(),
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Container(
                                  color: Colors.white,
                                  height:
                                      MediaQuery.of(context).size.height / 6.5,
                                  width:
                                      MediaQuery.of(context).size.width / 2.1,
                                  child: Center(
                                    child: new RaisedButton(
                                      onPressed: () => {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  AllEvening(),
                                            ))
                                      },
                                      child: Row(children: [
                                        const SizedBox(
                                          width: 28,
                                        ),
                                        CachedNetworkImage(
                                            imageUrl:
                                                "https://cdn.icon-icons.com/icons2/3191/PNG/128/sunset_sun_sunshine_sunrise_weather_icon_194245.png")
                                      ]),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width:
                                      MediaQuery.of(context).size.width / 2.1,
                                  color: const Color.fromARGB(255, 91, 100, 99),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      context.locale.toString() == "ar"
                                          ? Text("أذكار المساء".tr(),
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold))
                                          : Expanded(
                                              child: Text("أذكار المساء".tr(),
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 17.5,
                                                      fontWeight:
                                                          FontWeight.bold)))
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                        //end
                        ,
                        const SizedBox(height: 15),

                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                    color: Colors.white,
                                    height: MediaQuery.of(context).size.height /
                                        6.5,
                                    width:
                                        MediaQuery.of(context).size.width / 2.1,
                                    child: Center(
                                        child: new RaisedButton(
                                      onPressed: () => {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  AllPrayerZkerScreen(),
                                            ))
                                      },
                                      child: Row(children: [
                                        const SizedBox(
                                          width: 23,
                                        ),
                                        CachedNetworkImage(
                                            imageUrl:
                                                "https://cdn.icon-icons.com/icons2/2951/PNG/512/pray_icon_184487.png")
                                      ]),
                                    ))),
                                Container(
                                  alignment: Alignment.center,
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width:
                                      MediaQuery.of(context).size.width / 2.1,
                                  color: const Color.fromARGB(255, 91, 100, 99),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      context.locale.toString() == "ar"
                                          ? Text("أذكار الصلاة".tr(),
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold))
                                          : Expanded(
                                              child: Text("أذكار الصلاة".tr(),
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold)))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Container(
                                    color: Colors.white,
                                    height: MediaQuery.of(context).size.height /
                                        6.5,
                                    width:
                                        MediaQuery.of(context).size.width / 2.1,
                                    child: Center(
                                        child: new RaisedButton(
                                      onPressed: () => {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  AllMoskScreen(),
                                            ))
                                      },
                                      child: Row(children: [
                                        const SizedBox(
                                          width: 28,
                                        ),
                                        CachedNetworkImage(
                                            imageUrl:
                                                "https://cdn.icon-icons.com/icons2/2922/PNG/128/ramadhan_moslem_fasting_islam_mosque_star_icon_183496.png")
                                      ]),
                                    ))),
                                Container(
                                  alignment: Alignment.center,
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width:
                                      MediaQuery.of(context).size.width / 2.1,
                                  color: const Color.fromARGB(255, 91, 100, 99),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      context.locale.toString() == "ar"
                                          ? Text("أذكار المسجد".tr(),
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold))
                                          : Expanded(
                                              child: Text("أذكار المسجد".tr(),
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                        //end
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ));
    });
  }
}
