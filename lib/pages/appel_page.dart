import 'package:flutter/material.dart';
import '../themes/couleur.dart';
import '../models/liste.dart';
import '../components/appel_widget.dart';

class AppelPage extends StatefulWidget {
  const AppelPage({super.key});

  @override
  State<AppelPage> createState() => _AppelPageState();
}

class _AppelPageState extends State<AppelPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg,
      child: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Text("Récents",
            style: TextStyle(
              color: fg
            ),
          ),
          SizedBox(height: 20,),
          ...chat.map((e) => AppelWidget(nom: e["nom"], prenom: e["prenom"], appel: e["appel"], date: e["date"], profil: e["profil"],)),
        ],
      ),
    );
  }
}
