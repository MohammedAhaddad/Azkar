import 'package:flutter/material.dart';
import 'package:flutter_application_2/AzkarModels/Doaa.dart';
import 'package:flutter_application_2/data/data.dart';

class DoaaWidget extends StatelessWidget {
  Doaa doa;
  DoaaWidget(this.doa);
  int cont = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
      // appBar: AppBar(
      //     title: const Text("أذكار المسلم "),
      //     backgroundColor: const Color.fromARGB(255, 67, 160, 236),
      //     actions: <Widget>[
      //       IconButton(
      //         icon: const Icon(
      //           Icons.brightness_3,
      //           color: Colors.white,
      //         ),
      //         onPressed: () {
      //           // do something
      //         },
      //       ),
      //       IconButton(
      //         icon: const Icon(
      //           Icons.notifications_active,
      //           color: Colors.white,
      //         ),
      //         onPressed: () {
      //           // do something
      //         },
      //       ),
      //       IconButton(
      //         icon: const Icon(
      //           Icons.more_vert,
      //           color: Colors.white,
      //         ),
      //         onPressed: () {
      //           // do something
      //         },
      //       )
      //     ]),
      child: ListView(children: [
        Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 20),
            width: MediaQuery.of(context).size.width / 2.1,
            color: Color.fromARGB(153, 119, 114, 114),
            child: Center(
              child: new RaisedButton(
                onPressed: () => {},
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 1.2),
                      child: CircleAvatar(
                        radius: 25,
                        child: Text(doa.Repetition.toString()),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          doa.Ziker ?? "",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ],
                ),
              ),
            ))
      ]),
    );
  }
}
    // Expanded(
          //  height: 600,
        //  child: ListView(
        //    children: [
              //error

        //       SizedBox(
        //         child: Container(
        //           child: ListView.builder(
        //               shrinkWrap: true,
        //               physics: const NeverScrollableScrollPhysics(),
        //               scrollDirection: Axis.vertical,
        //               itemCount: AzkrList.length,
        //               itemBuilder: (context, index) {
        //                 return DoaaWidget(
        //                     Doaa[index].user!);
        //               }),
        //         ),
        //       ),
        //     ],
        //   ),
        // )