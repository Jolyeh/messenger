import 'package:flutter/material.dart';
import 'package:messenger/components/contact_widget.dart';
import '../themes/couleur.dart';
import '../models/liste.dart';

class ContactPage extends StatefulWidget {


  ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  var nbre = chat.length;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg,
      child: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Text("Actuellement en ligne ($nbre)",
            style: TextStyle(
              color: fg
            ),
          ),
          SizedBox(height: 20,),
          ...chat.map((e) => ContactWidget(nom: e["nom"], prenom: e["prenom"], profil: e["profil"],))
        ],
      ),
    );
  }
}
