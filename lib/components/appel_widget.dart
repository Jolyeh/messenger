import 'package:flutter/material.dart';
import 'package:messenger/models/liste.dart';
import '../themes/couleur.dart';

class AppelWidget extends StatelessWidget {

  String? nom, prenom, appel, date, profil;

  AppelWidget({super.key, required this.nom, required this.prenom, required this.appel, required this.date, required this.profil});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
        },
        leading: CircleAvatar(backgroundImage: AssetImage("$profil"),),
        title: Text("$nom $prenom",
          style: TextStyle(
            color: fg
          ),
        ),
        subtitle: Row(
          children: [
            Icon(Icons.phone_callback_sharp, size: 15, color: Colors.grey,),
            SizedBox(width: 10,),
            Text("$appel   $date",
              style: TextStyle(
                color: Colors.grey
              ),
            ),
          ],
        )
    );
  }
}
