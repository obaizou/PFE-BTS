// ignore_for_file: avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:pfe/View/PagesApp/Setting.dart';
import 'package:pfe/View/PagesApp/pageDesc/Cplus.dart';
import 'package:pfe/View/PagesApp/pageDesc/flutter.dart';
import 'package:pfe/View/PagesApp/pageDesc/java.dart';
import 'package:pfe/View/PagesApp/pageDesc/python.dart';
import 'package:pfe/View/PagesApp/pageDesc/reactjs.dart';
import 'package:pfe/shorts/description_languager.dart';
import 'package:pfe/shorts/sliderQ.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(2), child: Container()),
        backgroundColor: Theme.of(context).colorScheme.background,
        key: scaffoldkey,
        body: Container(
          child: ListView(children: [
            Column(
              children: [
                Container(
                  height: 2,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Setting(),
                                fullscreenDialog: true,
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.settings,
                            color: Colors.blue,
                            size: 35,
                          )),
                      Container(
                        margin: const EdgeInsets.only(left: 65),
                        child: const Text(
                          "Accueil",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 5),
                    height: 200,
                    child: const SliderQ()),
                //cards------------------------------------------------cards
                Container(
                  child: const desc_home(
                      image_Card: "images/cPlus.png",
                      title_Card: "Qu'est-ce que le C++ ?",
                      text_Card:
                          "C++ est un langage de programmation orienté objet et polyvalent qui a été développé au début...",
                      page: Cplus()),
                ),
                Container(
                  child: const desc_home(
                      image_Card: "images/flutter.png",
                      title_Card: "Qu'est-ce que Flutter ?",
                      text_Card:
                          "Flutter est un framework de développement d'applications mobiles multiplateforme, open-source, créé par Google. Il est ...",
                      page: fluter()),
                ),
                Container(
                  child: const desc_home(
                      image_Card: "images/python.png",
                      title_Card: "Qu'est-ce que Python ?",
                      text_Card:
                          "Python est un langage de programmation de haut niveau et polyvalent qui a été créé à la fin des années 1980 par Guido van Rossum...",
                      page: python()),
                ),
                Container(
                  child: const desc_home(
                      image_Card: "images/java.png",
                      title_Card: "Qu'est-ce que Java ?",
                      text_Card:
                          "Java est un langage de programmation polyvalent et orienté objet développé par Sun Microsystems (maintenant détenu par Oracle) au début des années...",
                      page: java()),
                ),
                Container(
                  child: const desc_home(
                      image_Card: "images/reactjs.png",
                      title_Card: "Qu'est-ce que React js ?",
                      text_Card:
                          "React.js (également connu sous le nom de React) est une bibliothèque JavaScript populaire et open-source pour la construction d'interfaces utilisateur. Elle a été développ...",
                      page: reactjs()),
                ),
              ].animate().flipV(duration: 500.ms),
            )
          ]),
        ),
      ),
    );
  }
}
