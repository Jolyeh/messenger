import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../themes/couleur.dart';
import '../components/discu_storie.dart';
import '../components/chat_widget.dart';
import '../models/liste.dart';

class DiscusionPage extends StatefulWidget {
  const DiscusionPage({super.key});

  @override
  State<DiscusionPage> createState() => _DiscusionPageState();
}

class _DiscusionPageState extends State<DiscusionPage> {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: bg,
      child: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Container(
            height: 40,
            child: SearchBar(
              elevation: MaterialStatePropertyAll(0),
              backgroundColor: MaterialStatePropertyAll(CupertinoColors.systemGrey6),
              leading: Icon(Icons.search),
              hintText: "Rechercher",
              hintStyle: MaterialStatePropertyAll(TextStyle(color: Colors.grey)),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: chat.map((e) => DiscuStorie(prenom: e["prenom"], profil: e["profil"],)).toList(),
            ),
          ),
          ...chat.map((e) => ChatWidget(nom: e["nom"], prenom: e["prenom"], message: e["message"], profil: e["profil"]))
        ],
      ),
    );
  }
}
