// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:get/get.dart';
import 'package:pfe/View/PagesApp/LoginPage/Login.dart';
import 'package:pfe/View/PagesApp/setting_page/politique.dart';
import 'package:pfe/View/PagesApp/setting_page/resume.dart';
import 'package:pfe/NavBarButtom/home.dart';
import 'package:pfe/main.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  void _launchURL1() {
    FlutterWebBrowser.openWebPage(
        url: "https://www.linkedin.com/in/omarbaizou/");
  }

  void _launchURL2() {
    FlutterWebBrowser.openWebPage(
        url: "https://www.linkedin.com/in/lahcen-abidoune-b375872a7/");
  }

  void Discordlink() {
    FlutterWebBrowser.openWebPage(url: "https://discord.gg/wj2xvxcSpf");
  }

  String img1 = "Icons.light_mode";
  bool click = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          children: [
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 12),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => mainhome()),
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          size: 45,
                          color: Colors.blue,
                        ))),
                Container(
                    margin: const EdgeInsets.only(top: 12),
                    child: const Text(
                      "Retour",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(left: 36, top: 19, bottom: 19),
                child: const Text(
                  "À propos de nous",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 6),
              padding: const EdgeInsets.only(bottom: 11),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(left: 18),
                    child: ListTile(
                      leading: Image.asset(
                        "images/discord.png",
                        height: 25,
                      ),
                      title: const Text(
                        "Communite",
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: Discordlink,
                    ),
                  ),
                  Container(
                    height: 1,
                    margin: const EdgeInsets.only(left: 9, top: 7),
                    child: const Divider(
                      color: Color.fromARGB(255, 31, 138, 196),
                      endIndent: 10,
                    ),
                  ),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(left: 18),
                    child: ListTile(
                      leading: Image.asset(
                        "images/linkedin.png",
                        height: 25,
                      ),
                      title: const Text(
                        "Omar Baizou",
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: _launchURL1,
                    ),
                  ),
                  Container(
                    height: 1,
                    margin: const EdgeInsets.only(left: 9, top: 7),
                    child: const Divider(
                      color: Color.fromARGB(255, 31, 138, 196),
                      endIndent: 10,
                    ),
                  ),
                ],
              ),
            ),
            //2
            Container(
                margin: const EdgeInsets.only(left: 36, top: 19, bottom: 19),
                child: const Text(
                  "À propos de l'application",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 6),
              padding: const EdgeInsets.only(bottom: 11),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(left: 18),
                    child: ListTile(
                      leading: const Icon(Icons.question_mark),
                      title: const Text(
                        "résumé",
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const resume(),
                            fullscreenDialog: true,
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 1,
                    margin: const EdgeInsets.only(left: 9, top: 7),
                    child: const Divider(
                      color: Color.fromARGB(255, 31, 138, 196),
                      endIndent: 10,
                    ),
                  ),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(top: 1, left: 18),
                    child: ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text(
                        "politique de confidentialité",
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const politique(),
                            fullscreenDialog: true,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 36, top: 19, bottom: 19),
                child: const Text(
                  "Déconnexion",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 6),
              padding: const EdgeInsets.only(bottom: 11),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // التحكم في اتجاه التضليل
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(top: 5, left: 18),
                    child: ListTile(
                      leading: const Icon(Icons.exit_to_app),
                      title: const Text(
                        "Déconnexion",
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () {
                        sharedPref.clear();
                        Get.offAll(Login_Page());
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
