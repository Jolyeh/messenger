import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../themes/couleur.dart';

class DrawerWidget extends StatelessWidget {

  String? text;
  IconData? icone;

  DrawerWidget({super.key, required this.icone, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: CupertinoColors.systemGrey3,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Icon(icone, color: fg,),

          ),
          SizedBox(width: 10,),
          Text("$text",
            style: TextStyle(
                color: fg,
                fontSize: 18
            ),
          ),
        ],
      ),
    );
  }
}
