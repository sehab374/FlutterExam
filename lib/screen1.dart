import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'item.dart';
import 'item_divider.dart';
import 'itemface.dart';

class FirstScreen extends StatefulWidget {
  static const String routeName = "firstscreen";

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  //int index = 0;
  int currentIndex = 0;

  List<Widget> images = [
    Image.asset("assets/images/slider1.png"),
    Image.asset("assets/images/slider2.png"),
    Image.asset("assets/images/slider3.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(20),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Moody",
            style: TextStyle(
                color: Color(0xff000000),
                fontSize: 24,
                fontWeight: FontWeight.w400),
          ),
          leading: Container(
              padding: EdgeInsets.only(top: 10, left: 15),
              // width: 20,
              // height: 30,
              child: Image.asset(
                "assets/images/tree.jpeg",
                width: 20,
                height: 20,
              )),
          actions: [
            Container(
              margin: EdgeInsets.only(top: 20, right: 10),
              child: Badge(
                  child: ImageIcon(
                    AssetImage("assets/images/ringicon.png"),
                    color: Colors.black,
                  ),
                  smallSize: 8),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(children: [
                    Text(
                      "Hello, ",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                    ),
                    Text(
                      "Sara Rose",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ]),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: Text("How are you feeling today ?",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xff371B34)))),
                  Row(
                    children: [
                      ItemFace("assets/images/lovee.png", "Love"),
                      ItemFace("assets/images/cooll.png", "Cool"),
                      ItemFace("assets/images/happyy.png", "Happy"),
                      ItemFace("assets/images/saddd.png", "Sad"),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ItemDivider("Feature","See more",Colors.green),
                  Column(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          ////////////////req
                          autoPlay: true,
                          height: 200,
                          //disableCenter: true,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          autoPlayAnimationDuration:
                              Duration(microseconds: 8000),
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
                      AnimatedSmoothIndicator(
                        activeIndex: currentIndex,
                        count: images.length,
                        effect: WormEffect(
                          dotHeight: 6,
                          dotWidth: 6,
                          spacing: 5,
                          dotColor: Color(0xffD9D9D9),
                          activeDotColor: Color(0xff98A2B3),
                          paintStyle: PaintingStyle.fill,
                        ),
                      ),
                    ],
                  ),
                  ItemDivider("Exercise","See more",Colors.green),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Item("assets/images/relaxation.png", "Relaxation",
                          Color(0xffB692F6)),
                      SizedBox(
                        width: 20,
                      ),
                      Item("assets/images/medetation.png", "meditation",
                          Color(0xffFAA7E0)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Item("assets/images/breating.png", "Beathing",
                          Color(0xffFEB273)),
                      SizedBox(
                        width: 20,
                      ),
                      Item("assets/images/yoga.png", "Yoga", Color(0xff7CD4FD)),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    ));
  }
}
