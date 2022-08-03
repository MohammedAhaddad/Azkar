import 'package:analog_clock/analog_clock.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/MyAzkar/AddZker.dart';
import 'package:flutter_application_2/Scrren2/AzkarMaslm.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hijri/hijri_calendar.dart';

class AzkarUI extends StatefulWidget {
  @override
  State<AzkarUI> createState() => _AzkarUIState();
}

class _AzkarUIState extends State<AzkarUI> {
  String imgg = "assets\profaile\azkar.png";

  String qr = "assets/profaile/—Pngtree—al quran 3d design_7555127.png";

  String man =
      "https://cdn.icon-icons.com/icons2/2922/PNG/512/ramadhan_moslem_fasting_islam_man_pray_icon_183502.png";

  String Azkary =
      "assets/profaile/—Pngtree—eid mubarak pray o allah_5993838.png";

  HijriCalendar _today = HijriCalendar.now();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 19, 24, 82),
          child: ListView(
            children: [
              Column(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 5,
                                  width:
                                      MediaQuery.of(context).size.width / 7.5,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AnalogClock(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1.0,
                                                color: Colors.white),
                                            color: Colors.transparent,
                                            shape: BoxShape.circle),
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                5,
                                        hourHandColor: Colors.white,
                                        minuteHandColor: Colors.white,
                                        numberColor: Colors.white,
                                        showNumbers: true,
                                        showDigitalClock: true,
                                        digitalClockColor: Colors.white,

                                        //     border: Border.all(
                                        //         width: 2.0, color: Colors.white),
                                        //     color: Colors.transparent,
                                        //     shape: BoxShape.circle),
                                        // width: 150.0,
                                        // isLive: true,
                                        // hourHandColor: Colors.white,
                                        // minuteHandColor: Colors.white,
                                        // showSecondHand: false,
                                        // numberColor: Colors.white,
                                        // showNumbers: true,
                                        // showAllNumbers: false,
                                        // textScaleFactor: 1.4,
                                        // showTicks: false,
                                        // showDigitalClock: false,
                                        // datetime: DateTime(2019, 1, 1, 9, 12, 15),
                                      ),
                                    ],
                                  )),
                            )
                            // const Icon(
                            //   Icons.schedule,
                            //   color: Colors.white,
                            //   size: 120,
                            // ),
                            ,
                            // SizedBox(
                            //   width: MediaQuery.of(context).size.width / 3.5,
                            // ),
                            // CachedNetworkImage(
                            //   imageUrl:
                            //       "https://static.swatch.com/images/product/SO33M100/sa200/SO33M100_sa200_er005.png",
                            //   height: 150,
                            //   width: 150,
                            // )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 20,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width / 1.8,
                          child: Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 15,
                              ),
                              Text(_today.hYear.toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 30)),
                              const Text("/ ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30)),
                              Text(_today.hMonth.toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 30)),
                              const Text("/ ",
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 30)),
                              Text(_today.hDay.toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 30))
                            ],
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 60,
                ),

                //الصورة الاولا
                Column(
                  children: [
                    Container(
                      color: Colors.white,
                      height: MediaQuery.of(context).size.height / 6.5,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: new RaisedButton(
                          onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AzkarMaslm(),
                                ))
                          },
                          child: Row(children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 3.1,
                            ),
                            Row(
                              children: [Image.asset(qr)],
                            ),
                          ]),
                        ),
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 91, 100, 99),
                      child: Row(
                        children: [
                          Text("                   القرأن الكريم".tr(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
                  ],
                )
                //نهاية
                ,
                const SizedBox(
                  height: 15,
                ),

                //row 2
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          color: Colors.white,
                          height: MediaQuery.of(context).size.height / 6.5,
                          width: MediaQuery.of(context).size.width / 2.1,

                          child: Center(
                            child: new RaisedButton(
                              onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AddZker(),
                                    ))
                              },
                              child: Row(children: [
                                const SizedBox(
                                  width: 23,
                                ),
                                Image.asset(Azkary)
                              ]),
                            ),
                          ),

                          //
                        ), //

                        Container(
                          height: MediaQuery.of(context).size.height / 20,
                          width: MediaQuery.of(context).size.width / 2.1,
                          color: const Color.fromARGB(255, 91, 100, 99),
                          child: Row(
                            children: [
                              Text("          أذكاري".tr(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                            color: Colors.white,
                            height: MediaQuery.of(context).size.height / 6.5,
                            width: MediaQuery.of(context).size.width / 2.1,
                            child: Center(
                              child: new RaisedButton(
                                onPressed: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AzkarMaslm(),
                                      ))
                                },
                                child: Row(children: [
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  CachedNetworkImage(imageUrl: man)
                                ]),
                              ),
                            )),
                        Container(
                          height: MediaQuery.of(context).size.height / 20,
                          width: MediaQuery.of(context).size.width / 2.1,
                          color: const Color.fromARGB(255, 91, 100, 99),
                          child: Row(
                            children: [
                              Text("     أذكار المسلم".tr(),
                                  style: const TextStyle(
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

                //Column 3
                ,
                const SizedBox(
                  height: 15,
                ),

                Column(
                  children: [
                    Container(
                      color: Colors.white,
                      height: MediaQuery.of(context).size.height / 6.5,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: new RaisedButton(
                            onPressed: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AzkarMaslm(),
                                      ))
                                },
                            child: Row(children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 3.1,
                              ),
                              Row(
                                children: [
                                  CachedNetworkImage(
                                      imageUrl:
                                          "https://cdn.icon-icons.com/icons2/1521/PNG/512/stopwatchhd_106058.png")
                                ],
                              ),
                            ])),
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 91, 100, 99),
                      child: Row(
                        children: [
                          Text("       إعدادات/تعديل أوقات وتنبيه ".tr(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
                  ],
                )
                //نهاية

                //row 4
                ,
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          color: Colors.white,
                          height: MediaQuery.of(context).size.height / 6.5,
                          width: MediaQuery.of(context).size.width / 2.1,
                          child: Center(
                            child: new RaisedButton(
                              onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AzkarMaslm(),
                                    ))
                              },
                              child: Row(children: [
                                const SizedBox(
                                  width: 28,
                                ),
                                CachedNetworkImage(
                                    imageUrl:
                                        "https://cdn.icon-icons.com/icons2/2922/PNG/512/ramadhan_moslem_fasting_islam_pray_icon_183480.png")
                              ]),
                            ),
                          ),

                          //

                          //
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 20,
                          width: MediaQuery.of(context).size.width / 2.1,
                          color: const Color.fromARGB(255, 91, 100, 99),
                          child: Row(
                            children: [
                              Text("        المسبحة".tr(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          color: Colors.white,
                          height: MediaQuery.of(context).size.height / 6.5,
                          width: MediaQuery.of(context).size.width / 2.1,

                          child: Center(
                            child: new RaisedButton(
                              onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AzkarMaslm(),
                                    ))
                              },
                              child: Row(children: [
                                const SizedBox(
                                  width: 28,
                                ),
                                CachedNetworkImage(
                                    imageUrl:
                                        "https://cdn.icon-icons.com/icons2/2922/PNG/512/ramadhan_moslem_fasting_islam_god_allah_icon_183494.png")
                              ]),
                            ),
                          ),

                          //
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 20,
                          width: MediaQuery.of(context).size.width / 2.1,
                          color: const Color.fromARGB(255, 91, 100, 99),
                          child: Row(
                            children: [
                              Text("أسماء الله الحسنى".tr(),
                                  style: const TextStyle(
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

                //colume 5
                ,
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Container(
                      color: Colors.white,
                      height: MediaQuery.of(context).size.height / 6.5,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: new RaisedButton(
                          onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AzkarMaslm(),
                                ))
                          },
                          child: Row(children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 3.1,
                            ),
                            Row(
                              children: [
                                CachedNetworkImage(
                                    imageUrl:
                                        "https://cdn.icon-icons.com/icons2/2922/PNG/512/ramadhan_moslem_fasting_islam_pray_icon_183480.png")
                              ],
                            ),
                          ]),
                        ),
                      ),

                      //

                      //
                    ),
                    Container(
                      color: const Color.fromARGB(255, 91, 100, 99),
                      child: Row(
                        children: [
                          Text("        أظهار المسبحة  على الشاشة ".tr(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
                  ],
                )
                //نهاية

                //الصف 6
                ,
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          color: Colors.white,
                          height: MediaQuery.of(context).size.height / 6.5,
                          width: MediaQuery.of(context).size.width / 2.1,
                          child: Center(
                            child: new RaisedButton(
                              onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AzkarMaslm(),
                                    ))
                              },
                              child: Row(children: [
                                const SizedBox(
                                  width: 28,
                                ),
                                CachedNetworkImage(
                                    imageUrl:
                                        "https://cdn.icon-icons.com/icons2/2922/PNG/512/ramadhan_moslem_fasting_islam_mosque_moon_icon_183475.png")
                              ]),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 20,
                          width: MediaQuery.of(context).size.width / 2.1,
                          color: const Color.fromARGB(255, 91, 100, 99),
                          child: Row(
                            children: [
                              Text("   التاريخ الهجري".tr(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          color: Colors.white,
                          height: MediaQuery.of(context).size.height / 6.5,
                          width: MediaQuery.of(context).size.width / 2.1,
                          child: Center(
                            child: new RaisedButton(
                              onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AzkarMaslm(),
                                    ))
                              },
                              child: Row(children: [
                                const SizedBox(
                                  width: 28,
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
                          color: const Color.fromARGB(255, 91, 100, 99),
                          child: Row(
                            children: [
                              Text("     مناسبة دينية ".tr(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                //النهاية
                const SizedBox(
                  height: 15,
                ),

                //نهاية

                //بداية 7

                const SizedBox(
                  height: 15,
                ),

                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                            color: Colors.white,
                            height: MediaQuery.of(context).size.height / 6.5,
                            width: MediaQuery.of(context).size.width / 2.1,
                            child: Center(
                              child: new RaisedButton(
                                onPressed: (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AzkarMaslm()));
                                }),
                                child: Row(children: [
                                  const SizedBox(
                                    width: 28,
                                  ),
                                  CachedNetworkImage(
                                      imageUrl:
                                          "https://cdn.icon-icons.com/icons2/1413/PNG/256/documents_97553.png")
                                ]),
                              ),
                            )),
                        Container(
                          height: MediaQuery.of(context).size.height / 20,
                          width: MediaQuery.of(context).size.width / 2.1,
                          color: const Color.fromARGB(255, 91, 100, 99),
                          child: Row(
                            children: [
                              Text("     رسائل ايمانية ".tr(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          color: Colors.white,
                          height: MediaQuery.of(context).size.height / 6.5,
                          width: MediaQuery.of(context).size.width / 2.1,
                          child: Center(
                            child: new RaisedButton(
                              onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AzkarMaslm(),
                                    ))
                              },
                              child: Row(children: [
                                const SizedBox(
                                  width: 28,
                                ),
                                CachedNetworkImage(
                                    imageUrl:
                                        "https://cdn.icon-icons.com/icons2/2922/PNG/512/ramadhan_moslem_fasting_islam_mosque_icon_183482.png")
                              ]),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 20,
                          width: MediaQuery.of(context).size.width / 2.1,
                          color: const Color.fromARGB(255, 91, 100, 99),
                          child: Row(
                            children: [
                              Text("    السيرة النبوية".tr(),
                                  style: const TextStyle(
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

                //نهاية
                ,
                const SizedBox(
                  height: 15,
                )
                //بدايو الثامن
                ,
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          color: Colors.white,
                          height: MediaQuery.of(context).size.height / 6.5,
                          width: MediaQuery.of(context).size.width / 2.1,
                          child: Center(
                            child: new RaisedButton(
                              onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AzkarMaslm(),
                                    ))
                              },
                              child: Row(children: [
                                const SizedBox(
                                  width: 28,
                                ),
                                CachedNetworkImage(
                                    imageUrl:
                                        "https://t3.ftcdn.net/jpg/04/90/92/62/240_F_490926257_2auTbr7zNEulAysy1riOiRCKQ5LfLo3I.jpg")
                              ]),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 20,
                          width: MediaQuery.of(context).size.width / 2.1,
                          color: const Color.fromARGB(255, 91, 100, 99),
                          child: Row(
                            children: [
                              Text("        طلباتكم نلبيها".tr(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
                //نهاية
//نهاية
                ,
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 9.5,
                          width: MediaQuery.of(context).size.width / 2.1,
                        ),
                      ],
                    ),
                  ],
                )
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
