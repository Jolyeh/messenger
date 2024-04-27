import 'package:flutter/material.dart';
import 'package:messenger/components/storie_widget.dart';
import '../themes/couleur.dart';
import '../models/liste.dart';

class StoriePage extends StatefulWidget {
  const StoriePage({super.key});

  @override
  State<StoriePage> createState() => _StoriePageState();
}

class _StoriePageState extends State<StoriePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg,
      child: GridView.count(
          padding: EdgeInsets.all(10),
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        children: chat.map((e) => StorisWidget(nom: e['nom'], prenom: e['prenom'], profil: e['profil'], storie: e['storie'])).toList(),
      ),
    );
  }
}
