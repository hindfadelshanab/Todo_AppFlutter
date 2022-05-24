import 'package:final_project/LogInScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AddTodo.dart';
import 'HomePage.dart';

class BottomContainer extends StatefulWidget {
  @override
  _BottomContainerState createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> {
  int index = 1;
  final tabs = [HomePage(), AddTodo(), LogInScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        // appBar: AppBar(
        //   backgroundColor: Colors.black87,
        //   title: Text(
        //     "Today's Schedule",
        //     style: TextStyle(
        //         fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
        //   ),
        // ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            this.index = value;
            debugPrint("value ${value}");
            debugPrint("index ${index}");
          },
          backgroundColor: Colors.black87,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.white,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Container(
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [
                        Colors.indigoAccent,
                        Colors.purple,
                      ])),
                  child: Icon(
                    Icons.add,
                    size: 32,
                    color: Colors.white,
                  ),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.white,
                ),
                label: "Setting"),
          ],
        ),
        body: tabs[index]
        //   body: StreamBuilder<QuerySnapshot>(
        //     stream: _stream,
        //     builder: (context, snapshot) {
        //       if (!snapshot.hasData) {
        //         return Center(
        //           child: CircularProgressIndicator(),
        //         );
        //       }
        //
        //
        //       return ListView.builder(
        //           itemCount: snapshot.data!.docs.length,
        //           itemBuilder: (context, index) {
        //             IconData iconData;
        //             Color iconColor;
        //             Map<String, dynamic> doucment =
        //                 snapshot.data!.docs[index].data() as Map<String, dynamic>;
        //             switch (doucment["Category"]) {
        //               case "Work":
        //                 iconData = Icons.run_circle_outlined;
        //                 iconColor = Colors.white;
        //                 break;
        //               case "WorkOut":
        //                 iconData = Icons.alarm;
        //                 iconColor = Colors.teal;
        //                 break;
        //               case "Food":
        //                 iconData = Icons.local_grocery_store;
        //                 iconColor = Colors.blue;
        //                 break;
        //               case "Design":
        //                 iconData = Icons.audiotrack;
        //                 iconColor = Colors.green;
        //                 break;
        //
        //               default:
        //                 iconData = Icons.run_circle_outlined;
        //                 iconColor = Colors.white;
        //             }
        //             selected.add(Select(
        //                 id: snapshot.data!.docs[index].id, checkValue: false));
        //             return InkWell(
        //               onTap: () {
        //                 Navigator.push(
        //                     context,
        //                     MaterialPageRoute(
        //                         builder: (builder) => ViewData(
        //                             doucment: doucment,
        //                             id: snapshot.data!.docs[index].id.toString())));
        //               },
        //               child: TodoCard(
        //                 title: doucment["title"] == null
        //                     ? "Hey There"
        //                     : doucment["title"],
        //                 iconData: iconData,
        //                 iconColor: iconColor,
        //                 iconBGColor: Colors.white,
        //                 check: selected[index].checkValue,
        //                 time: "10 Pm",
        //                 index: index,
        //                 onChange: onChange,
        //
        //               ),
        //             );
        //           });
        //     },
        //   )
        // SingleChildScrollView(
        //   child: Container(
        //     height: MediaQuery.of(context).size.height,
        //     width: MediaQuery.of(context).size.width,
        //     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        //     child: Column(
        //       children: [
        //         TodoCard(
        //           title: "Hind",
        //           iconData: Icons.alarm,
        //           iconColor: Colors.red,
        //           iconBGColor: Colors.white,
        //           check: true,
        //           time: "10 Pm",
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        );
  }
}
