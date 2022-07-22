import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/AzkarModels/AllZker.dart';
import 'package:flutter_application_2/EveningAzkar/AllEvening.dart';
import 'package:flutter_application_2/Mosk/AllMoskZker.dart';
import 'package:flutter_application_2/Prayer/AllPrayerZker.dart';
import 'package:flutter_application_2/Sleep/AllSleepZker.dart';
import 'package:flutter_application_2/wake_up_Azkar/AllWakeUP.dart';

class AzkarMaslm extends StatelessWidget {
  String qr =
      "https://png.pngtree.com/png-clipart/20210530/original/pngtree-reciting-quran-black-icon-png-image_6336761.jpg";
  String man =
      "https://cdn.icon-icons.com/icons2/2922/PNG/512/ramadhan_moslem_fasting_islam_man_pray_icon_183502.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("أذكار المسلم "),
            backgroundColor: const Color.fromARGB(255, 67, 160, 236),
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
              color: Color.fromARGB(255, 19, 24, 82),
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
                                width: MediaQuery.of(context).size.width / 2.1,
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
                                      SizedBox(
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
                                height: MediaQuery.of(context).size.height / 20,
                                width: MediaQuery.of(context).size.width / 2.1,
                                color: Color.fromARGB(255, 91, 100, 99),
                                child: Row(
                                  children: const [
                                    Text("    أذكار الصباح",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                color: Colors.white,
                                height:
                                    MediaQuery.of(context).size.height / 6.5,
                                width: MediaQuery.of(context).size.width / 2.1,
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
                                      SizedBox(
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
                                height: MediaQuery.of(context).size.height / 20,
                                width: MediaQuery.of(context).size.width / 2.1,
                                color: Color.fromARGB(255, 91, 100, 99),
                                child: Row(
                                  children: const [
                                    Text("   أذكار الاستيقاظ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      )
                      //end
                      ,
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                color: Colors.white,
                                height:
                                    MediaQuery.of(context).size.height / 6.5,
                                width: MediaQuery.of(context).size.width / 2.1,
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
                                      SizedBox(
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
                                height: MediaQuery.of(context).size.height / 20,
                                width: MediaQuery.of(context).size.width / 2.1,
                                color: Color.fromARGB(255, 91, 100, 99),
                                child: Row(
                                  children: const [
                                    Text("     أذكار النوم",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                color: Colors.white,
                                height:
                                    MediaQuery.of(context).size.height / 6.5,
                                width: MediaQuery.of(context).size.width / 2.1,
                                child: Center(
                                  child: new RaisedButton(
                                    onPressed: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => AllEvening(),
                                          ))
                                    },
                                    child: Row(children: [
                                      SizedBox(
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
                                height: MediaQuery.of(context).size.height / 20,
                                width: MediaQuery.of(context).size.width / 2.1,
                                color: Color.fromARGB(255, 91, 100, 99),
                                child: Row(
                                  children: const [
                                    Text("     أذكار المساء",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      )
                      //end
                      ,
                      SizedBox(height: 15),

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
                                                AllPrayerZkerScreen(),
                                          ))
                                    },
                                    child: Row(children: [
                                      SizedBox(
                                        width: 23,
                                      ),
                                      CachedNetworkImage(
                                          imageUrl:
                                              "https://cdn.icon-icons.com/icons2/2951/PNG/512/pray_icon_184487.png")
                                    ]),
                                  ))),
                              Container(
                                height: MediaQuery.of(context).size.height / 20,
                                width: MediaQuery.of(context).size.width / 2.1,
                                color: Color.fromARGB(255, 91, 100, 99),
                                child: Row(
                                  children: const [
                                    Text("     أذكار الصلاة",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
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
                                                AllMoskScreen(),
                                          ))
                                    },
                                    child: Row(children: [
                                      SizedBox(
                                        width: 28,
                                      ),
                                      CachedNetworkImage(
                                          imageUrl:
                                              "https://cdn.icon-icons.com/icons2/2922/PNG/128/ramadhan_moslem_fasting_islam_mosque_star_icon_183496.png")
                                    ]),
                                  ))),
                              Container(
                                height: MediaQuery.of(context).size.height / 20,
                                width: MediaQuery.of(context).size.width / 2.1,
                                color: Color.fromARGB(255, 91, 100, 99),
                                child: Row(
                                  children: const [
                                    Text("     أذكار المسجد",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
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
  }
}
