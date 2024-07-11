import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:pfe/View/PagesApp/AiChat.dart';
import 'package:pfe/View/PagesApp/Cources.dart';
import 'package:pfe/View/PagesApp/Home.dart';
import 'package:pfe/View/PagesApp/Notes.dart';
import 'package:pfe/View/PagesApp/RoadMap.dart';

class mainhome extends StatefulWidget {
  @override
  _mainhomeState createState() => _mainhomeState();
}

class _mainhomeState extends State<mainhome> {
  int _selectedIndex = 0;

  final screns = [
    const Home(),
    const RoadMap(),
    const Cources(),
    const aichat(),
    const Notes(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: screns[_selectedIndex],
        bottomNavigationBar: FlashyTabBar(
          animationCurve: Curves.linear,
          selectedIndex: _selectedIndex,
          iconSize: 30,
          showElevation: false, // use this to remove appBar's elevation
          animationDuration: Duration(milliseconds: 800),
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            FlashyTabBarItem(
              icon: Icon(Icons.home),
              activeColor:
                  Colors.blue, // Change this to your desired active color
              inactiveColor: Colors.grey,
              title: Text('Accueil'),
            ),
            FlashyTabBarItem(
              icon: Icon(Icons.map_sharp),
              activeColor:
                  Colors.blue, // Change this to your desired active color
              inactiveColor: Colors.grey,
              title: Text('Plan'),
            ),
            FlashyTabBarItem(
              icon: Icon(Icons.menu_book_sharp),
              activeColor:
                  Colors.blue, // Change this to your desired active color
              inactiveColor: Colors.grey,
              title: Text('Cours'),
            ),
            FlashyTabBarItem(
              icon: Icon(Icons.chat),
              activeColor:
                  Colors.blue, // Change this to your desired active color
              inactiveColor: Colors.grey,
              title: Text('AI Chat'),
            ),
            FlashyTabBarItem(
              icon: Icon(Icons.note_alt_sharp),
              activeColor:
                  Colors.blue, // Change this to your desired active color
              inactiveColor: Colors.grey,
              title: Text('Notes'),
            ),
          ],
        ),
      ),
    );
  }
}
