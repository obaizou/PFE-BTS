// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pfe/shorts/PageDescH.dart';

// ignore: camel_case_types
class java extends StatelessWidget {
  const java({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDescH(
        img: "images/java.png",
        title: "Qu'est-ce que Java ?",
        text:
            "Java est un langage de programmation polyvalent et orienté objet développé par Sun Microsystems (maintenant détenu par Oracle) au début des années 1990. Il se caractérise par le paradigme de la programmation orientée objet, l'indépendance de plate-forme grâce à la machine virtuelle Java, la gestion automatique de la mémoire, le typage statique, une bibliothèque standard complète, la portabilité, la robustesse, la sécurité et la prise en charge intégrée du multithreading. Java est largement utilisé dans les applications d'entreprise, le développement d'applications mobiles Android, le calcul scientifique et numérique, les systèmes de données volumineux et distribués, le développement de jeux, le développement web et les systèmes embarqués. Cela est dû à son principe 'écrivez une fois, exécutez n'importe où', à sa robustesse et à son vaste écosystème de bibliothèques, de frameworks ");
  }
}
