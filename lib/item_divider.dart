import 'package:flutter/material.dart';

class ItemDivider extends StatelessWidget {
  static const String routeName = "ItemDivider";
  String caption;
  String seecaption;

  Color colorname;

  ItemDivider(this.caption,this.seecaption , this.colorname);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(caption,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
        Row(
          children: [
            Text(seecaption,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: colorname)),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: colorname,
            )
          ],
        )
      ],
    );
  }
}
