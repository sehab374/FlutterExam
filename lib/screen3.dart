import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:google_fonts/google_fonts.dart';

import 'item_divider.dart';

class ThirdScreen extends StatefulWidget {
  static const String routeName = "ThirdScreen";

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int _selectedIndex = 0;
  int currentIndex = 0;

  List<Widget> images = [
    Image.asset("assets/images/s3slider1.png"),
    Image.asset("assets/images/s3slider2.png"),
  ];

  List<String> _options = ['Discover', 'News', 'Most Viewed', 'Saved'];

  Widget _buildChips() {
    List<Widget> chips = [];

    for (int i = 0; i < _options.length; i++) {
      ChoiceChip choiceChip = ChoiceChip(
        selected: _selectedIndex == i,
        label: Text(_options[i],
            style: TextStyle(
                color: Color(0xff667085),
                fontSize: 16,
                fontWeight: FontWeight.w500)),
        elevation: 2,
        pressElevation: 5,
        backgroundColor: Colors.transparent,
        selectedColor: Color(0xffD6BBFB),
        onSelected: (bool selected) {
          setState(() {
            if (selected) {
              _selectedIndex = i;
            }
          });
        },
      );

      chips.add(Padding(
          padding: EdgeInsets.symmetric(horizontal: 5), child: choiceChip));
    } //////////////////////////for end

    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(AssetImage("assets/images/flower.png"),
                      color: Color(0xffC9B4FF)),
                  Text("AliceCare",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.black))
                ],
              ),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Column(children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 1, color: Color(0xff667085))),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Articles, Video, Audio and More,...",
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff667085)),
                      prefixIcon:
                      Icon(Icons.search, color: Color(0xff667085), size: 25),
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 70,
                      //color: Colors.deepOrange,
                      child: _buildChips(),
                    ),
                  ],
                ),
                ItemDivider("Hot topics", "See all", Color(0xff5925DC)),
                CarouselSlider(
                  options: CarouselOptions(
                    ////////////////req
                    autoPlay: true,
                    height: 200,
                    //disableCenter: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration: Duration(microseconds: 8000),
                    autoPlayInterval: Duration(seconds: 2),
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),

                  items: images, ///////////////////////req
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Get Tips",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.black)),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffEAECF5),
                  ),
                  padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/doctor.png", height: 180),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Container(
                          //   padding:
                          //       EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          //   decoration: BoxDecoration(
                          //       border:
                          //           Border.all(color: Color(0xffD9D9D9), width: 2),
                          //       borderRadius: BorderRadius.circular(18)),
                          //   child: Text("7 days",
                          //       style: TextStyle(
                          //           fontWeight: FontWeight.w500,
                          //           fontSize: 14,
                          //           color: Colors.black)),
                          // ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Connect with doctors & ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Colors.black)),
                                Text("get suggestions",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Colors.black)),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Connect now and get ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.black)),
                              Text("expert insights  ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.black)),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: () => () {},
                            child: Text("View detail"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff7F56D9),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          )
                        ],
                      ),
                      // Image.asset("assets/images/morningyoga.png", height: 110),
                    ],
                  ),
                ),
                ItemDivider(
                    "Cycle Phases and Period", "See all", Color(0xff5925DC)),
              ]),
            ),
          ),
        ));
  }
}
