import 'package:flutter/material.dart';
import 'package:flutter_application_2/AzkarModels/Doaa.dart';
import 'package:flutter_application_2/data/data.dart';
import 'package:url_launcher/url_launcher.dart';

class DoaaWidget extends StatefulWidget {
  Doaa doa;
  DoaaWidget(this.doa);

  @override
  State<DoaaWidget> createState() => _DoaaWidgetState();
}

class _DoaaWidgetState extends State<DoaaWidget> {
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
                        if (widget.doa.Repetition == 0)
                          {}
                        else
                          {
                            widget.doa.Repetition = widget.doa.Repetition! - 1,
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
                              child: Text(widget.doa.Repetition.toString()),
                            ),
                          ),
                          Center(
                              //  margin: EdgeInsets.all(10),
                              child: Text(
                            wid = widget.doa.Ziker ?? "",
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
    String whatsApp = "whatsapp://send?phone=&text=$wid";

    launchUrl(
      Uri.parse(whatsApp),
    );
  }
}
