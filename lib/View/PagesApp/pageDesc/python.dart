// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:pfe/shorts/PageDescH.dart';

class python extends StatelessWidget {
  const python({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDescH(
        img: "images/python.png",
        title: "Qu'est-ce que Python ?",
        text:
            "Python est un langage de programmation de haut niveau, polyvalent et créé à la fin des années 1980 par Guido van Rossum. Il est connu pour sa simplicité, sa lisibilité et sa polyvalence. Interprété et doté d'un typage dynamique, Python offre une syntaxe propre et concise, ainsi que des capacités multiplateformes. Il dispose d'une vaste bibliothèque standard et est utilisé dans de nombreux domaines d'application tels que le développement web, le calcul scientifique, l'analyse de données, l'intelligence artificielle, l'automatisation, etc. Avec une communauté open-source active et collaborative, Python est devenu très populaire et largement utilisé, notamment dans les domaines de la science des données, de l'apprentissage automatique et du développement web.");
  }
}
