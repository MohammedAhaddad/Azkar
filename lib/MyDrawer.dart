import 'package:flutter/material.dart';
import 'package:flutter_application_2/Scrren2/AzkarMaslm.dart';
import 'package:easy_localization/easy_localization.dart';

class MyDrawer extends StatelessWidget {
  String img =
      "https://play-lh.googleusercontent.com/WfKuwkQjEk3ybUNElq9LKm2giKiERwLEoRFtB5rksPSAg6mrQb8YTLJ76fGbGWkn-Q";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            child: Column(children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: Container(

                      //  margin:
                      //  const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                      // child: CircleAvatar(
                      //   radius: 30,
                      //   backgroundImage: NetworkImage(img),
                      // ),
                      ),
                  accountName: const Text(
                    "",
                    // style: TextStyle(
                    //   fontSize: 20,
                    //   fontWeight: FontWeight.bold,
                    // ),
                  ),
                  accountEmail: context.locale.toString() == 'ar'
                      ? Text("ربي إغفر لي ولوالدي".tr(),
                          style: TextStyle(fontSize: 20))
                      : Expanded(
                          child: Text("ربي إغفر لي ولوالدي".tr(),
                              style: TextStyle(fontSize: 17)),
                        )),
            ]),
          ),
          ListTile(
            title: Text("القائمة الرئيسية".tr(),
                style: const TextStyle(fontSize: 17)),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: const Icon(
              Icons.home,
              size: 27,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => AzkarMaslm())));
            },
          ),
          ListTile(
            title: Text("القرأن الكريم".tr(), style: TextStyle(fontSize: 17)),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: const Icon(
              Icons.book,
              size: 27,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AzkarMaslm()));
            },
          ),
          ListTile(
            title: Text("أذكاري الخاصة".tr(),
                style: const TextStyle(fontSize: 17)),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: const Icon(
              Icons.format_list_numbered,
              size: 27,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AzkarMaslm()));
            },
          ),
          ListTile(
            title: Text("أذكار المسلم".tr(), style: TextStyle(fontSize: 17)),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: const Icon(
              Icons.person,
              size: 27,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AzkarMaslm()),
              );
            },
          ),
          ListTile(
            title: Text("الإعدادات".tr(), style: const TextStyle(fontSize: 17)),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: const Icon(
              Icons.settings,
              size: 27,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AzkarMaslm()));
            },
          ),
          ListTile(
            title: Text("المسبحة الإلكترونية".tr(),
                style: TextStyle(fontSize: 17)),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: const Icon(
              Icons.all_inclusive,
              size: 27,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AzkarMaslm()));
            },
          ),
          ListTile(
            title:
                Text("أسماء الله الحسنى".tr(), style: TextStyle(fontSize: 17)),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: const Icon(
              Icons.favorite,
              color: const Color.fromARGB(125, 20, 14, 10),
              size: 27,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AzkarMaslm()));
            },
          ),
          ListTile(
            title:
                Text("مناسبة دينية".tr(), style: const TextStyle(fontSize: 17)),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: const Icon(
              Icons.event_available,
              size: 27,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AzkarMaslm()));
            },
          ),
          ListTile(
            title: Text("التاريخ الهجري".tr(), style: TextStyle(fontSize: 17)),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: const Icon(
              Icons.wysiwyg,
              size: 27,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AzkarMaslm()));
            },
          ),
          ListTile(
            title: Text("رسائل ايمانية".tr(), style: TextStyle(fontSize: 17)),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: const Icon(
              Icons.speaker_notes,
              size: 27,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AzkarMaslm()));
            },
          ),
          ListTile(
            title: Text("طلباتكم نلبيها".tr(),
                style: const TextStyle(fontSize: 17)),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: const Icon(
              Icons.group_add,
              size: 27,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AzkarMaslm()));
            },
          ),
        ],
      ),
    );
  }
}
