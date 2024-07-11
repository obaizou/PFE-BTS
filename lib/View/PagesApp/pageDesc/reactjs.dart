// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:pfe/shorts/PageDescH.dart';

class reactjs extends StatelessWidget {
  const reactjs({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDescH(
        img: "images/reactjs.png",
        title: "What is React JS ?",
        text:
            "React.js est une bibliothèque JavaScript open-source et populaire pour la construction d'interfaces utilisateur, développée et maintenue par Facebook (maintenant Meta), caractérisée par une architecture à base de composants, un DOM virtuel pour des mises à jour DOM efficaces, un modèle de programmation déclaratif, une syntaxe JSX, un flux de données unidirectionnel, des Hooks React pour une gestion simplifiée de l'état, et un écosystème étendu de bibliothèques et d'outils, permettant le développement d'applications web complexes et interactives, d'applications mono-page, de composants d'interface utilisateur réutilisables, d'applications mobiles avec React Native, et d'applications côté serveur, contribuant à sa large adoption en tant que principale bibliothèque de développement web front-end.");
  }
}
