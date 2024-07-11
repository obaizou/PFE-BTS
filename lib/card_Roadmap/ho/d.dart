// ignore_for_file: avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:pfe/View/PagesApp/roadmapPages/aws.dart';
import 'package:pfe/View/PagesApp/roadmapPages/flutter.dart';
import 'package:pfe/View/PagesApp/roadmapPages/java.dart';
import 'package:pfe/View/PagesApp/roadmapPages/mongo.dart';
import 'package:pfe/View/PagesApp/roadmapPages/python.dart';
import 'package:pfe/View/PagesApp/roadmapPages/reactjs.dart';
import 'package:pfe/View/PagesApp/roadmapPages/sql.dart';
import 'package:pfe/View/PagesApp/roadmapPages/typescripte.dart';
import 'package:pfe/View/PagesApp/roadmapPages/vuejs.dart';
import 'package:pfe/card_Roadmap/ho/card.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class Road extends StatefulWidget {
  const Road({super.key});

  @override
  State<Road> createState() => _RoadState();
}

class _RoadState extends State<Road> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  final List<Widget> fancyCards = <Widget>[
    FancyCard(
      image: Image.asset("images/python.png"),
      title: "PYTHON",
      page: rpython(),
    ),
    FancyCard(
      image: Image.asset("images/java.png"),
      title: "JAVA",
      page: rjava(),
    ),
    FancyCard(
      image: Image.asset("images/reactjs.png"),
      title: "REACT",
      page: rreactjs(),
    ),
    FancyCard(
      image: Image.asset("images/flutter.png"),
      title: "FLUTTER",
      page: rflutter(),
    ),
    FancyCard(
      image: Image.asset("images/vue.png"),
      title: "VUE.JS",
      page: rVuejs(),
    ),
    FancyCard(
      image: Image.asset("images/sql.png"),
      title: "SQL",
      page: rsql(),
    ),
    FancyCard(
      image: Image.asset("images/ts.png"),
      title: "TYPE - SCRIPT",
      page: rtypescriptes(),
    ),
    FancyCard(
      image: Image.asset("images/mongo.png"),
      title: "MONGO DB",
      page: rmongo(),
    ),
    FancyCard(
      image: Image.asset("images/aws.png"),
      title: "AWS",
      page: raws(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(2), child: Container()),
        backgroundColor: Theme.of(context).colorScheme.background,
        key: scaffoldkey,
        body: StackedCardCarousel(
          items: fancyCards,
        ),
      ),
    );
  }
}
