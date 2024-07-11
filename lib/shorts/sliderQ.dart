// ignore_for_file: file_names
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pfe/shorts/slidecontainer.dart';

class SliderQ extends StatefulWidget {
  const SliderQ({super.key});
  @override
  State<SliderQ> createState() => _SliderQState();
}

class _SliderQState extends State<SliderQ> {
  final myList = [
    slideC(text: "“Parler est bon marché Montrez-moi le code”"),
    slideC(
        text:
            "“Le code est comme l'humour. Quand vous devez l'expliquer, c'est mauvais.”"),
    slideC(text: "“La meilleure façon de prédire l'avenir est de le créer“"),
    slideC(text: "“Les algorithmes façonnent notre monde numérique“"),
    slideC(text: "“Déboguer : frustration, triomphe, persévérance inlassable“"),
    slideC(text: "“Les bugs : compagnons éternels des programmeurs“"),
    slideC(text: "“La collaboration alimente l'innovation en programmation“"),
    slideC(
        text: "“Des possibilités infinies réalisées grâce à la programmation“"),
    slideC(text: "“Les fonctions résolvent les problèmes, le code conquiert“"),
  ];
  int myindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayInterval: const Duration(seconds: 2),
              height: 190,
              onPageChanged: (index, reason) {
                setState(() {
                  myindex = index;
                });
              },
            ),
            items: myList,
          )
        ],
      )),
    );
  }
}
