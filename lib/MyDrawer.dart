import 'package:flutter/material.dart';
import 'package:flutter_application_2/Scrren2/AzkarMaslm.dart';

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
                    margin:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(img),
                    ),
                  ),
                  accountName: const Text(
                    " أذكار المسلم الذكي",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  accountEmail: const Text("ربي إغفر لي ولوالدي",
                      style: TextStyle(fontSize: 20))),
            ]),
          ),
          ListTile(
            title: const Text("القائمة الرئيسية",
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
            title: const Text("القرأن الكريم", style: TextStyle(fontSize: 17)),
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
            title: const Text("أذكاري الخاصة ",
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
            title: const Text("أذكار المسلم", style: TextStyle(fontSize: 17)),
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
            title:
                const Text("الإعدادات", style: const TextStyle(fontSize: 17)),
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
            title: const Text("المسبحة الإلكترونية",
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
            title: const Text("أسماء الله الحسنى ",
                style: TextStyle(fontSize: 17)),
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
            title: const Text("مناسبات دينية ",
                style: const TextStyle(fontSize: 17)),
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
            title:
                const Text("الترايخ الهجري  ", style: TextStyle(fontSize: 17)),
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
            title:
                const Text("رسائل إيمانية   ", style: TextStyle(fontSize: 17)),
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
            title: const Text("طلباتكم نلبيها ",
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
