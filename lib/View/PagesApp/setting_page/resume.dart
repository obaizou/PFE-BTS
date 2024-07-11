import 'package:flutter/material.dart';
import 'package:pfe/View/PagesApp/setting_page/proposCard.dart';

// ignore: camel_case_types
class resume extends StatelessWidget {
  const resume({super.key});

  @override
  Widget build(BuildContext context) {
    return const proposCard(
      text:
          " application propose une variété de fonctionnalités intéressantes :\nDes cours/leçons pour l'apprentissage\nDes parcours d'apprentissage structurés\nUn chat avec un assistant IA\nUne liste de tâches à faire (todo list)\nCette combinaison de fonctionnalités éducatives et de productivité semble faire de votre application une solution complète pour les utilisateurs, leur permettant d'apprendre, d'interagir avec un agent conversationnel IA et de gérer leurs tâches. Le mélange de cours, de cheminements d'apprentissage et d'outils collaboratifs/organisationnels rend cette application polyvalente et susceptible de répondre à de nombreux besoins des utilisateurs.",
      title: 'résumé',
    );
  }
}
