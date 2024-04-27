import 'package:flutter/material.dart';
import '../themes/couleur.dart';
import '../components/drawer_widget.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: bg,
      child: ListView(
        padding: EdgeInsets.all(15),
        children: [
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("images/stories/img7.jpg"),),
            title: Text("Joël Prince",
              style: TextStyle(
                color: fg,
                fontSize: 18
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        title: Text("Mode sombre"),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () {
                              setState(() {
                                fg = Colors.white;
                                bg = Colors.black;
                              });
                              Navigator.pop(context);
                            },
                            child: Text("Activer"),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              setState(() {
                                fg = Colors.black;
                                bg = Colors.white;
                              });
                              Navigator.pop(context);
                            },
                            child: Text("Désactiver"),
                          ),
                          SimpleDialogOption(
                            child: Container(color: Colors.black, height: 1,),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Annuler"),
                          ),
                        ],
                      );
                    }
                );
              },
              icon: Icon(Icons.settings, color: fg,),
            ),
          ),
          SizedBox(height: 20,),
          DrawerWidget(icone: Icons.messenger_outlined, text: "Discussions"),
          DrawerWidget(icone: Icons.store, text: "Marketplace"),
          DrawerWidget(icone: Icons.message, text: "Invitation par message"),
          DrawerWidget(icone: Icons.archive_sharp, text: "Archivre"),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Communautés",
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
              Text("Modifier",
                style: TextStyle(
                    color: Colors.blue
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Text("Toutes les communautés ont été...",
            style: TextStyle(
                color: Colors.grey
            ),
          ),
          SizedBox(height: 20,),
          DrawerWidget(icone: Icons.add, text: "Créer une communauté"),
        ],
      ),
    );
  }
}

