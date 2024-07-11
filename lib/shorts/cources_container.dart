// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

class C_cources extends StatelessWidget {
  const C_cources({
    super.key,
    required this.icon,
    required this.title,
    required this.name,
    required this.link,
  });
  final String icon;
  final String title;
  final String name;
  final String link;

  void _launchURL() {
    FlutterWebBrowser.openWebPage(url: link);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchURL,
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(143, 180, 173, 173),
            borderRadius: BorderRadius.circular(25)),
        margin: const EdgeInsets.only(left: 9, right: 9, top: 7, bottom: 7),
        child: Row(
          children: [
            Container(
              child: Image.asset(
                icon,
                width: 150,
                height: 150,
              ),
            ),
            Container(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  Text(
                    name,
                    style: const TextStyle(fontSize: 20),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
