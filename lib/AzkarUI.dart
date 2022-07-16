import 'package:flutter/material.dart';
import 'package:flutter_application_2/Scrren2/AzkarMaslm.dart';

class AzkarUI extends StatelessWidget {
  String imgg = "assets\profaile\azkar.png";
  String qr = "assets/profaile/—Pngtree—al quran 3d design_7555127.png";
  String man =
      "https://cdn.icon-icons.com/icons2/2922/PNG/512/ramadhan_moslem_fasting_islam_man_pray_icon_183502.png";
  String Azkary =
      "assets/profaile/—Pngtree—eid mubarak pray o allah_5993838.png";

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color.fromARGB(255, 19, 24, 82),
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
                        //width: 30,
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 17.5,
                            ),
                            const Icon(
                              Icons.schedule,
                              color: Colors.white,
                              size: 120,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 3.5,
                            ),
                            Image.network(
                              "https://static.swatch.com/images/product/SO33M100/sa200/SO33M100_sa200_er005.png",
                              height: 150,
                              width: 150,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width / 1.8,
                          child: Row(
                            children: const [
                              Text("1443 ذو الحجة  ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25)),
                              Text("14",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25))
                            ],
                          ))
                    ],
                  ),
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
                      color: Color.fromARGB(255, 91, 100, 99),
                      child: Row(
                        children: const [
                          Text("                   القرأن الكريم",
                              style: TextStyle(
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
                                      builder: (context) => AzkarMaslm(),
                                    ))
                              },
                              child: Row(children: [
                                SizedBox(
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
                          color: Color.fromARGB(255, 91, 100, 99),
                          child: Row(
                            children: const [
                              Text("          أذكاري",
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
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Image.network(man)
                                ]),
                              ),
                            )),
                        Container(
                          height: MediaQuery.of(context).size.height / 20,
                          width: MediaQuery.of(context).size.width / 2.1,
                          color: Color.fromARGB(255, 91, 100, 99),
                          child: Row(
                            children: const [
                              Text("     أذكار المسلم",
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

                //Column 3
                ,
                SizedBox(
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
                                  Image.network(
                                      "https://cdn.icon-icons.com/icons2/1521/PNG/512/stopwatchhd_106058.png")
                                ],
                              ),
                            ])),
                      ),
                    ),
                    Container(
                      color: Color.fromARGB(255, 91, 100, 99),
                      child: Row(
                        children: const [
                          Text("       إعدادات/تعديل أوقات وتنبيه ",
                              style: TextStyle(
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
                SizedBox(
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
                                SizedBox(
                                  width: 28,
                                ),
                                Image.network(
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
                          color: Color.fromARGB(255, 91, 100, 99),
                          child: Row(
                            children: const [
                              Text("        المسبحة",
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
                                SizedBox(
                                  width: 28,
                                ),
                                Image.network(
                                    "https://cdn.icon-icons.com/icons2/2922/PNG/512/ramadhan_moslem_fasting_islam_god_allah_icon_183494.png")
                              ]),
                            ),
                          ),

                          //
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 20,
                          width: MediaQuery.of(context).size.width / 2.1,
                          color: Color.fromARGB(255, 91, 100, 99),
                          child: Row(
                            children: const [
                              Text("أسماء الله الحسنى",
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

                //colume 5
                ,
                SizedBox(
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
                                Image.network(
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
                      color: Color.fromARGB(255, 91, 100, 99),
                      child: Row(
                        children: const [
                          Text("        أظهار المسبحة  على الشاشة ",
                              style: TextStyle(
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
                SizedBox(
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
                                SizedBox(
                                  width: 28,
                                ),
                                Image.network(
                                    "https://cdn.icon-icons.com/icons2/2922/PNG/512/ramadhan_moslem_fasting_islam_mosque_moon_icon_183475.png")
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
                              Text("   التاريخ الهجري",
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
                                SizedBox(
                                  width: 28,
                                ),
                                Image.network(
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
                              Text("     مناسبة دينية ",
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
                ),
                //النهاية
                SizedBox(
                  height: 15,
                ),

                //نهاية

                //بداية 7

                SizedBox(
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
                                  SizedBox(
                                    width: 28,
                                  ),
                                  Image.network(
                                      "https://cdn.icon-icons.com/icons2/1413/PNG/256/documents_97553.png")
                                ]),
                              ),
                            )),
                        Container(
                          height: MediaQuery.of(context).size.height / 20,
                          width: MediaQuery.of(context).size.width / 2.1,
                          color: Color.fromARGB(255, 91, 100, 99),
                          child: Row(
                            children: const [
                              Text("     رسائل ايمانية ",
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
                                SizedBox(
                                  width: 28,
                                ),
                                Image.network(
                                    "https://cdn.icon-icons.com/icons2/2922/PNG/512/ramadhan_moslem_fasting_islam_mosque_icon_183482.png")
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
                              Text("    السيرة النبوية",
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

                //نهاية
                ,
                SizedBox(
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
                                SizedBox(
                                  width: 28,
                                ),
                                Image.network(
                                    "https://t3.ftcdn.net/jpg/04/90/92/62/240_F_490926257_2auTbr7zNEulAysy1riOiRCKQ5LfLo3I.jpg")
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
                              Text("        طلباتكم نلبيها",
                                  style: TextStyle(
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
                SizedBox(
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
