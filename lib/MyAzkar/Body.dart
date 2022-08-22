import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/MyAzkar/Data/DB_Hilber.dart';
import 'package:flutter_application_2/MyAzkar/Provider/db_Proveder.dart';
import 'package:flutter_application_2/MyAzkar/models/ZkerModels.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class body extends StatefulWidget {
  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  String content = "";
  late ZkerModel z;

  @override
  void initState() {
    Provider.of<db_Proveder>(context, listen: false).getall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
              color: const Color.fromARGB(164, 158, 158, 158),
              padding: const EdgeInsets.only(top: 50),
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 12,
                    ),
                    Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.width / 70),
                      height: MediaQuery.of(context).size.height / 5,
                      color: Colors.white,
                      child: Container(
                        color: Colors.white,
                        child: Center(
                          child: new RaisedButton(
                            color: Colors.white,
                            onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      title: Text("إضافة ذكر جديد".tr()),
                                      content: Text(
                                          ": إن اردت ,ستظهر مع الأذكار التلقائية "
                                              .tr()),
                                      actions: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              5,
                                        ),
                                        Container(
                                          child: TextFormField(
                                            onChanged: (v) {
                                              content = v;
                                            },
                                            decoration: InputDecoration(
                                                border: UnderlineInputBorder(),
                                                labelText:
                                                    'أكتب هنا ما تريد'.tr(),
                                                icon: const Icon(Icons.add)),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2.2,
                                            ),
                                            TextButton(
                                                onPressed: () => Navigator.pop(
                                                    context, "Cancel"),
                                                child: Text("إغلاق".tr())),
                                            TextButton(
                                              onPressed: () async {
                                                z = ZkerModel(
                                                    ZkerName: content);
                                                await Provider.of<db_Proveder>(
                                                        context,
                                                        listen: false)
                                                    .createNewZker(z);
                                                Navigator.of(context).pop();
                                              },
                                              child: Text("إضف".tr()),
                                            )
                                          ],
                                        )
                                      ],
                                    )),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 15,
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        context.locale.toString() == 'ar'
                                            ? Text(
                                                "يمكنك اضافة اذكارك الخاصة هنا "
                                                    .tr(),
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 27),
                                              )
                                            : Expanded(
                                                child: Text(
                                                  "يمكنك اضافة اذكارك الخاصة هنا "
                                                      .tr(),
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 19),
                                                ),
                                              )
                                      ]),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //بدنياه
                    Container(
                      // height: MediaQuery.of(context).size.height / 1.8,
                      child: Consumer<db_Proveder>(
                          builder: (context, provider, x) {
                        return ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: provider.AllZker.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.all(
                                    MediaQuery.of(context).size.width / 70),
                                height: MediaQuery.of(context).size.height / 5,
                                color: Colors.white,
                                child: Row(children: [
                                  GestureDetector(
                                      child: Row(
                                        children: [
                                          const Icon(Icons.whatsapp,
                                              size: 50, color: Colors.green)
                                        ],
                                      ),
                                      onTap: () {
                                        whatsappURL(
                                            provider.AllZker[index].ZkerName);
                                      }),
                                  Expanded(
                                      child: Text(
                                    provider.AllZker[index].ZkerName,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                    // textDirection: TextDirection.rtl,
                                  )),
                                  GestureDetector(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(Icons.edit,
                                                size: 50, color: Colors.black),
                                          ],
                                        ),
                                        Row()
                                      ],
                                    ),
                                    onTap: () => showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                              title:
                                                  Text("إضافة ذكر جديد".tr()),
                                              content: Text(
                                                  ": إن اردت ,ستظهر مع الأذكار التلقائية "
                                                      .tr()),
                                              actions: [
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(),
                                                  child: TextFormField(
                                                    onChanged: (v) => provider
                                                        .AllZker[index]
                                                        .ZkerName = v,
                                                    initialValue: provider
                                                        .AllZker[index]
                                                        .ZkerName,
                                                    decoration: InputDecoration(
                                                      border:
                                                          UnderlineInputBorder(),
                                                      labelText:
                                                          'أكتب هنا ما تريد'
                                                              .tr(),
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    TextButton(
                                                        onPressed: () {
                                                          provider.deleteZker(
                                                              provider.AllZker[
                                                                  index]);
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child:
                                                            Text("حذف".tr())),
                                                    SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              3.5,
                                                    ),
                                                    TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                context,
                                                                "Cancel"),
                                                        child:
                                                            Text("إغلاق".tr())),
                                                    TextButton(
                                                      onPressed: () async {
                                                        await Provider.of<
                                                                    db_Proveder>(
                                                                context,
                                                                listen: false)
                                                            .updateTZker(
                                                                provider.AllZker[
                                                                    index]);
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Text("حفظ".tr()),
                                                    )
                                                  ],
                                                )
                                              ],
                                            )),
                                  )
                                ]),
                              );
                            });
                      }),
                    )
                  ],
                ),
              )),
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              height: 100,
              color: Colors.blue,
              child: Center(
                  child: context.locale.toString == 'ar'
                      ? Text("أذكاري".tr(),
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))
                      : Text("أذكاري".tr(),
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
            ),
          ),
        ],
      ),
    );
  }

  whatsappURL(wid) async {
    String whatsApp = "whatsapp://send?phone=&text=$wid";

    launchUrl(
      Uri.parse(whatsApp),
    );
  }
}
