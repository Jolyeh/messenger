import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../themes/couleur.dart';

class StorisWidget extends StatelessWidget {

  String? nom, prenom, profil, storie;

  StorisWidget({super.key, required this.nom, required this.prenom, required this.profil, required this.storie, });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage("$storie"),fit: BoxFit.cover)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.blue),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(backgroundImage: AssetImage("$profil"),)
          ),
          Text("$nom  $prenom",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
