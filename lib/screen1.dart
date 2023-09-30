import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatefulWidget {
  static const String routeName = "firstscreen";

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    "Moody",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 24,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              leading: Container(
                  padding: EdgeInsets.only(top: 15, left: 25),
                  width: 28,
                  height: 32,
                  child: Image.asset(
                    "assets/images/tree.jpeg",
                    width: double.infinity,
                    height: double.infinity,
                  )),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Badge(
                    label: Text("1"),
                    child: Icon(
                      Icons.notifications_none,
                      color: Color(0xff000000),
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(children: [
                      Text(
                        "Hello, ",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 20),
                      ),
                      Text(
                        "Sara Rose",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ]),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        child: Text("How are you feeling today ?")),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/images/love.png"),
                                Text("Love",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14))
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/images/cool.png"),
                                Text(
                                  "cool",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/images/happy.png"),
                                Text("happy",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14))
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/images/sadd.png"),
                                Text("sad",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    //////////////////////////////////////////////////Feature and See more
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Feature",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18)),
                        Row(
                          children: [
                            Text("See more",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Colors.green)),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.green,
                            )
                          ],
                        )
                      ],
                    ),
                    ///////////////////////////////////////////////Exercise and See more
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Exercise",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18)),
                          Row(
                            children: [
                              Text("See more",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Colors.green)),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.green,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    ////////////////////////////////////////relax and mede
                    Row(
                      children: [
                        //////////////////////////////////relax
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffB692F6).withOpacity(.5),
                                border:
                                Border.all(color:  Color(0xffB692F6).withOpacity(.5), width: 1)),
                            //color: Color(0xffB692F6).withOpacity(.5),
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(
                                  AssetImage("assets/images/relaxation.png"),
                                  color: Color(0xffB692F6),
                                ),
                                SizedBox(width: 10),
                                Text("Relaxation",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),

                        //////////////////////////////////medetation

                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffFAA7E0).withOpacity(.5),
                                border:
                                    Border.all(color:  Color(0xffFAA7E0).withOpacity(.5), width: 1)),
                            //color: Color(0xffFAA7E0).withOx`pacity(.5),
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(
                                  AssetImage("assets/images/medetation.png"),
                                  color: Color(0xffFAA7E0),
                                ),
                                SizedBox(width: 10),
                                Text("meditation",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    /////////////////////////////////////////////////////////////////////////////brething and yoga
                    Row(
                      children: [
                        //////////////////////////////////brething
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffFEB273).withOpacity(.5),
                                border:
                                Border.all(color:  Color(0xffFEB273).withOpacity(.5), width: 1)),
                            //color: Color(0xffFEB273).withOpacity(.5),
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(
                                  AssetImage("assets/images/breating.png"),
                                  color: Color(0xffFEB273),
                                ),
                                SizedBox(width: 10),
                                Text("Beathing",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),

                        //////////////////////////////////Yoga

                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff7CD4FD).withOpacity(.5),
                                border:
                                Border.all(color:  Color(0xff7CD4FD).withOpacity(.5), width: 1)),
                            //color: Color(0xff7CD4FD).withOpacity(.5),
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(
                                  AssetImage("assets/images/yoga.png"),
                                  color: Color(0xff7CD4FD),
                                ),
                                SizedBox(width: 10),
                                Text("Yoga",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
            ///////////////////////////////////////////////////////////////bottom navigation bar

            bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: Colors.green,
                unselectedItemColor: Colors.black,
                currentIndex: index,
                onTap: (value) {
                  index = value;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/images/home.png")),
                      label: "*",
                      backgroundColor: Colors.white),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/images/req.png")),
                      label: "*",
                      backgroundColor: Colors.white),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/images/calen.png")),
                      label: "*",
                      backgroundColor: Colors.white),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/images/person.png")),
                      label: "*",
                      backgroundColor: Colors.white),
                ])));
  }
}
