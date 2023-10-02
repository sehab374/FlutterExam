import 'package:flutter/material.dart';

import 's2_bigcard.dart';
import 's2_smallcard.dart';

class SecondScreen extends StatelessWidget {
  static const String routeName = "secondscreen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(20),
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 90,
            leading: CircleAvatar(child: Image.asset("assets/images/jade.png")),
            title:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Hello, Jade",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff000000))),
              Text("Ready to workout?",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.black)),
            ]),
            actions: [
              Container(
                margin: EdgeInsets.only(top: 35, right: 10),
                child: Badge(
                    child: ImageIcon(
                      AssetImage("assets/images/ringicon.png"),
                      color: Colors.black,
                    ),
                    smallSize: 8),
              )
            ],
          ),
          body: Column(
            children: [
              Expanded(
                flex: 3,
                child: Column(children: [
                  IntrinsicHeight(
                    child: Container(
                      height: 80,
                      color: Color(0xffEAECF5),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SmallCard("Heart Rate", "81", "BPM",
                              "assets/images/hearticon.png"),
                          VerticalDivider(
                              color: Color(0xffD9D9D9),
                              indent: 12,
                              width: 2,
                              endIndent: 12,
                              thickness: 2),
                          SmallCard("To-do", "32,5", "%",
                              "assets/images/todo_icon.png"),
                          VerticalDivider(
                              color: Color(0xffD9D9D9),
                              indent: 12,
                              width: 2,
                              endIndent: 12,
                              thickness: 2),
                          SmallCard("Calo", "1000", "Cal",
                              "assets/images/calo_icon.png"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Workout Programs",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.black)),
                    ],
                  ),

                  //BigCard("7 days", "Morning Yoga", "Improve mental focus."),
                ]),
              ),
              Expanded(
                flex: 10,
                child: Column(children: [
                  SizedBox(
                      height: 50,
                      child: AppBar(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        bottom: TabBar(
                            isScrollable: true,
                            indicatorColor: Color(0xff363F72),
                            labelColor: Color(0xff363F72),
                            unselectedLabelColor: Color(0xff667085),
                            labelStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            tabs: [
                              Tab(
                                text: "All Type",
                              ),
                              Tab(
                                text: "Full Body",
                              ),
                              Tab(
                                text: "Upper",
                              ),
                              Tab(
                                text: "Lower",
                              )
                            ]),
                      )),
                  Expanded(
                      child: TabBarView(children: [
                    ListView.builder(
                      //scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return BigCard();
                      },
                      itemCount: 20,
                    ),
                  ])),
                ]),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
