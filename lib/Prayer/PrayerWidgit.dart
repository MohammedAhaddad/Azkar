import 'package:flutter/material.dart';
import 'package:flutter_application_2/AzkarModels/Doaa.dart';
import 'package:flutter_application_2/Prayer/Prayer.dart';
import 'package:flutter_application_2/data/data.dart';
import 'package:url_launcher/url_launcher.dart';

class PrayerWidgit extends StatefulWidget {
  Prayer prayer;
  PrayerWidgit(this.prayer);

  @override
  State<PrayerWidgit> createState() => _PrayerWidgitState();
}

class _PrayerWidgitState extends State<PrayerWidgit> {
  String? wid;
  int cont = 3;
  setStateFunction() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
          child: Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 70),
              width: MediaQuery.of(context).size.width / 2.1,
              //  color: const Color.fromARGB(153, 119, 114, 114),
              child: Column(
                children: [
                  Center(
                    child: new RaisedButton(
                      onPressed: () => {
                        if (widget.prayer.Repetition == 0)
                          {}
                        else
                          {
                            widget.prayer.Repetition =
                                widget.prayer.Repetition! - 1,
                            setStateFunction()
                          }
                      },
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 1.2),
                            child: CircleAvatar(
                              radius: 25,
                              child: Text(widget.prayer.Repetition.toString()),
                            ),
                          ),
                          Center(
                              //  margin: EdgeInsets.all(10),
                              child: Text(
                            wid = widget.prayer.Ziker ?? "",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                            textDirection: TextDirection.rtl,
                          )),
                          Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 1.8),
                            child: Row(children: [
                              GestureDetector(
                                // color: const Color.fromARGB(153, 119, 114, 114),
                                child: Row(
                                  children: const [
                                    Icon(Icons.whatsapp,
                                        size: 50, color: Colors.green),
                                  ],
                                ),
                                onTap: () {
                                  whatsappURL();
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                child: Text(
                                  "مشاركة",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 25),
                                ),
                                onTap: () {},
                              )
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Container(
                  //   color: const Color.fromARGB(153, 119, 114, 114),
                  //   margin: EdgeInsets.only(
                  //       left: MediaQuery.of(context).size.width / 1.5),
                  // ),
                ],
              ))),
    );
  }

  whatsappURL() async {
    String whatsApp = "whatsapp://send?phone=972597985877&text=$wid";

    launchUrl(
      Uri.parse(whatsApp),
    );
  }
}
