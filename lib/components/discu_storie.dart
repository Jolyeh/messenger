import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../themes/couleur.dart';

class DiscuStorie extends StatelessWidget {

  String? prenom, profil;

  DiscuStorie({super.key, required this.prenom, required this.profil});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            child: CircleAvatar(backgroundImage: AssetImage("$profil"),),
          ),
          SizedBox(height: 5,),
          Text("$prenom",
            style: TextStyle(
              color: fg
            ),
          )
        ],
      ),
    );
  }
}
