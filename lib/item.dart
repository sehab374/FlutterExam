import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  static const String routeName = "item";
  String img;
  String caption;
  Color colorName;

  Item(this.img, this.caption, this.colorName);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: colorName.withOpacity(.5),
            border: Border.all(color: colorName.withOpacity(.5), width: 1)),
        //color: Color(0xff7CD4FD).withOpacity(.5),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(
              AssetImage(img),
              color: colorName,
            ),
            SizedBox(width: 10),
            Text(caption,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black))
          ],
        ),
      ),
    );
  }
}
