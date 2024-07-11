import 'package:flutter/material.dart';
import 'package:pfe/shorts/PageDescH.dart';

// ignore: camel_case_types
class fluter extends StatelessWidget {
  const fluter({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageDescH(
        img: "images/flutter.png",
        title: "Qu'est-ce que Flutter ?",
        text:
            "Flutter est un framework de développement d'applications mobiles open-source et multiplateforme créé par Google. Il est utilisé pour développer des applications pour Android, iOS, le web et les plates-formes de bureau à partir d'un code source unique. Flutter présente plusieurs caractéristiques, notamment le développement multiplateforme, le langage de programmation Dart, une architecture basée sur des widgets, un cycle de développement rapide, des performances natives, une bibliothèque étendue de widgets, un écosystème riche et la programmation réactive.Flutter gagne en popularité en raison de sa capacité à créer des applications à hautes performances et compilées de manière native pour plusieurs plates-formes, tout en offrant une expérience de développement d'interface utilisateur moderne et expressive. Grâce à son approche basée sur des widgets, Flutter permet de créer des interfaces utilisateur réactives et attrayantes. En utilisant le langage de programmation Dart, les développeurs peuvent écrire du code efficace et concis.Flutter offre également un cycle de développement rapide grâce à son mécanisme de rechargement à chaud (hot reload), qui permet de voir les modifications apportées au code immédiatement et en temps réel. Cela accélère le processus de développement et facilite les tests et les itérations.En plus de ses fonctionnalités, Flutter bénéficie d'une communauté active et d'un écosystème en pleine croissance, avec de nombreux packages et plugins disponibles pour étendre les fonctionnalités de base du framework.En résumé, Flutter est un framework puissant et polyvalent pour le développement d'applications mobiles multiplateformes, offrant une expérience de développement rapide, des performances natives et une grande flexibilité pour les développeurs.");
  }
}
