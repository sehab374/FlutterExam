import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  String caption;
  String txt1;
  String txt2;
  String imgpath;

  SmallCard(this.caption, this.txt1, this.txt2, this.imgpath);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageIcon(AssetImage(imgpath),
                  color: Color(0xff717BBC), size: 16),
              SizedBox(width: 4),
              Text(caption,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.black))
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(txt1,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.black)),
              SizedBox(
                width: 2,
              ),
              Text(txt2,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black)),
            ],
          )
        ],
      ),
    );
  }
}
