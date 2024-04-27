import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../themes/couleur.dart';

class ChatWidget extends StatelessWidget {

  String? nom, prenom, message, profil;

  ChatWidget({super.key, required this.nom, required this.prenom, required this.message, required this.profil});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {
        },
        leading: Container(
            height: 50,
            width: 50,
            child: CircleAvatar(backgroundImage: AssetImage("$profil"),)
        ),
        title: Text("$nom $prenom",
          style: TextStyle(
            color: fg
          ),
        ),
        subtitle: Text("$message",
          style: TextStyle(
            color: fg
          ),
        ),
      ),
    );
  }
}
