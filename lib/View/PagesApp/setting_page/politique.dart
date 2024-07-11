import 'package:flutter/material.dart';
import 'package:pfe/View/PagesApp/setting_page/proposCard.dart';

// ignore: camel_case_types
class politique extends StatelessWidget {
  const politique({super.key});

  @override
  Widget build(BuildContext context) {
    return const proposCard(
      text:
          "1)Collecte de données :\n \t L'application collecte uniquement les informations d'identification personnelle nécessaires au fonctionnement des différentes fonctionnalités, comme le nom d'utilisateur, l'adresse e-mail, etc.\n \tAucune information supplémentaire n'est recueillie sans le consentement explicite de l'utilisateur.\n2)Utilisation des données :\n \tLes données collectées sont utilisées exclusivement pour fournir et améliorer les services de l'application (cours, parcours d'apprentissage, chat IA, todo list, etc.).\n \t Les données ne sont pas partagées avec des tiers à des fins commerciales ou publicitaires.\n 3)Sécurité des données :\n \t Des mesures de sécurité appropriées, telles que le chiffrement et l'authentification, sont mises en place pour protéger les données des utilisateurs contre tout accès non autorisé ou toute utilisation abusive.\n \t L'application s'engage à maintenir un haut niveau de sécurité pour préserver la confidentialité des informations.\n 4)Droits des utilisateurs :\n \t Les utilisateurs ont le droit d'accéder à leurs données personnelles, de les rectifier ou de les supprimer sur simple demande.\n \t L'application respecte le droit à la vie privée et donne aux utilisateurs le contrôle sur leurs informations.\n Conformité :\n \t La politique de confidentialité est conforme aux réglementations en vigueur en matière de protection des données personnelles, telles que le RGPD.\n \t L'application s'engage à respecter les lois et réglementations applicables concernant la confidentialité et la sécurité des données.",
      title: 'politique',
    );
  }
}
