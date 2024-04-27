import 'package:flutter/material.dart';
import '../themes/couleur.dart';

class ContactWidget extends StatelessWidget {

  String? nom, prenom, profil;

  ContactWidget({super.key, required this.nom, required this.prenom, required this.profil});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
      },
      leading: CircleAvatar(backgroundImage: AssetImage('$profil'),),
      title: Text("$nom $prenom",
        style: TextStyle(
          color: fg
        ),
      ),
    );
  }
}
