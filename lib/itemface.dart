import 'package:flutter/material.dart';

class ItemFace extends StatelessWidget {
  static const String routeName = "itemface";

  String caption;
  String img;

  ItemFace(this.img, this.caption);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xffE4E7EC), width: 10)),
                child: CircleAvatar(child: Image.asset(img))),
            SizedBox(
              height: 7,
            ),
            Text(caption,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff000000)))
          ],
        ),
      ),
    );
  }
}
