import 'package:flutter/material.dart';
import '../themes/couleur.dart';
import 'discussion_page.dart';
import 'appel_page.dart';
import 'contact_page.dart';
import 'storie_page.dart';
import 'drawer_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;

  setCurrentIndex(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: bg,
        title: [
          Text("Discussions", style: TextStyle(color: fg),),
          Text("Appels", style: TextStyle(color: fg),),
          Text("Contacts", style: TextStyle(color: fg),),
          Text("Stories", style: TextStyle(color: fg),),
        ][_currentIndex],
        actions: [
          IconButton(
              onPressed: () {
              },
              icon: Icon(Icons.edit, color: fg,)
          )
        ],
      ),

      body: [
        DiscusionPage(),
        AppelPage(),
        ContactPage(),
        StoriePage(),
      ][_currentIndex],

      drawer: DrawerPage(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex:  _currentIndex,
        onTap: (index) => setCurrentIndex(index),
        backgroundColor: bg,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black45,
        showUnselectedLabels: true,
        elevation: 20,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.mark_chat_unread_sharp,),
            label: "Discussions",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_camera_back_sharp),
            label: "Appels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "Contacts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.web_stories),
            label: "Stories",
          ),
        ],
      ),
    );
  }
}
