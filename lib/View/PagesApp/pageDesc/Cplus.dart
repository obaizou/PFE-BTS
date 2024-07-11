// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pfe/shorts/PageDescH.dart';

class Cplus extends StatelessWidget {
  const Cplus({super.key});
  final int index = 0;

  @override
  Widget build(BuildContext context) {
    return const PageDescH(
        img: "images/cPlus.png",
        title: "Qu'est-ce que le C++ ?",
        text:
            "C++ est un langage de programmation polyvalent et orienté objet qui a été développé au début des années 1980 par Bjarne Stroustrup aux Bell Labs. Il a été conçu comme une extension du langage de programmation C, ajoutant des fonctionnalités telles que la programmation orientée objet, la surcharge de fonctions et l'abstraction de données. C++ prend en charge les concepts de POO tels que les classes, les objets, l'héritage, le polymorphisme et l'encapsulation.C++ offre à la fois un accès aux détails système de bas niveau et des constructions de programmation de haut niveau. Il est portable et conçu pour la performance. Il est compatible avec le langage C et dispose d'une riche bibliothèque standard. C++ prend en charge à la fois les paradigmes de programmation procédurale et fonctionnelle.C++ est largement utilisé dans le développement de logiciels système, le développement de jeux, les systèmes embarqués, le calcul haute performance, les logiciels financiers et commerciaux, les compilateurs et les interprètes, ainsi que les logiciels de réseau et de communication.");
  }
}
