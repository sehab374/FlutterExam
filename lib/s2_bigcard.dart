import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  // String txt1;
  // String txt2;
  // String txt3;
  //
  // BigCard(this.txt1, this.txt2, this.txt3);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffEAECF5),
          ),
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9), width: 2),
                        borderRadius: BorderRadius.circular(18)),
                    child: Text("7 days",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.black)),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    child: Text("Morning Yoga",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black)),
                  ),
                  Text("Improve mental focus.",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.black)),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      ImageIcon(AssetImage("assets/images/watch.png"),
                          size: 14),
                      SizedBox(
                        width: 5,
                      ),
                      Text("30 mins",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.black)),
                    ],
                  )
                ],
              ),
              Image.asset("assets/images/morningyoga.png", height: 110),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffEAECF5),
          ),
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(vertical: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9), width: 2),
                        borderRadius: BorderRadius.circular(18)),
                    child: Text("3 days",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.black)),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    child: Text("Plank Exercise",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black)),
                  ),
                  Text("Improve posture and stability.",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.black)),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      ImageIcon(AssetImage("assets/images/watch.png"),
                          size: 14),
                      SizedBox(
                        width: 5,
                      ),
                      Text("30 mins",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.black)),
                    ],
                  )
                ],
              ),
              Image.asset("assets/images/plankexercise.png", height: 110),
            ],
          ),
        ),
      ],
    );

    //   Container(
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(10),
    //     color: Color(0xffEAECF5),
    //   ),
    //   padding: EdgeInsets.all(20),
    //   margin: EdgeInsets.symmetric(vertical: 20),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Container(
    //             padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    //             decoration: BoxDecoration(
    //                 border: Border.all(color: Color(0xffD9D9D9), width: 2),
    //                 borderRadius: BorderRadius.circular(18)),
    //             child: Text(txt1,
    //                 style: TextStyle(
    //                     fontWeight: FontWeight.w500,
    //                     fontSize: 14,
    //                     color: Colors.black)),
    //           ),
    //           Container(
    //             margin: EdgeInsets.symmetric(vertical: 12),
    //             child: Text(txt2,
    //                 style: TextStyle(
    //                     fontWeight: FontWeight.w600,
    //                     fontSize: 20,
    //                     color: Colors.black)),
    //           ),
    //           Text(txt3,
    //               style: TextStyle(
    //                   fontWeight: FontWeight.w400,
    //                   fontSize: 12,
    //                   color: Colors.black)),
    //           SizedBox(
    //             height: 15,
    //           ),
    //           Row(
    //             children: [
    //               ImageIcon(AssetImage("assets/images/watch.png"), size: 14),
    //               SizedBox(
    //                 width: 5,
    //               ),
    //               Text("30 mins",
    //                   style: TextStyle(
    //                       fontWeight: FontWeight.w400,
    //                       fontSize: 12,
    //                       color: Colors.black)),
    //             ],
    //           )
    //         ],
    //       ),
    //       Image.asset("assets/images/morningyoga.png", height: 150),
    //     ],
    //   ),
    // );
  }
}
