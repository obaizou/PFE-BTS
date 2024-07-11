// ignore_for_file: file_names, avoid_unnecessary_containers, unnecessary_import
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:pfe/View/PagesApp/LoginPage/Login.dart';
import 'package:pfe/shorts/cources_container.dart';

class Cources extends StatefulWidget {
  const Cources({super.key});

  @override
  State<Cources> createState() => _CourcesState();
}

class _CourcesState extends State<Cources> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  void navigateToPage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Login_Page(),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(2), child: Container()),
        backgroundColor: Theme.of(context).colorScheme.background,
        key: scaffoldkey,
        body: Container(
          // margin: const EdgeInsets.only(bottom: 26),
          child: ListView(children: [
            Container(
                child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      height: 2,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 115),
                              child: const Text(
                                "Cours",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        const C_cources(
                            link:
                                "https://www.youtube.com/playlist?list=PL93xoMrxRJIvtIXjAiX15wcyNv-LOWZa9",
                            icon: "images/flutter.png",
                            title: "Flutter",
                            name: "Wael"),
                        const C_cources(
                            link:
                                "https://www.youtube.com/playlist?list=PLLVmUqYuyQNYMFObvYujnbuA_su4fdVvc",
                            icon: "images/java.png",
                            title: " Java",
                            name: "عالم البرمجة"),
                        const C_cources(
                            link:
                                "https://www.youtube.com/playlist?list=PLm_sigBWSRY3FPx6aEMVzyx0d9y-IDWvF",
                            icon: "images/reactjs.png",
                            title: "React Js",
                            name: "Jamaoui"),
                        const C_cources(
                            link:
                                "https://www.youtube.com/playlist?list=PLm_sigBWSRY35MMuwaveBm2DNw7NyYCqH",
                            icon: "images/es.png",
                            title: "Ecma Script",
                            name: "Jamaoui"),
                        const C_cources(
                            link:
                                "https://www.youtube.com/playlist?list=PLDoPjvoNmBAx3kiplQR_oeDqLDBUDYwVv",
                            icon: "images/js.png",
                            title: "Java Script",
                            name: "Elzero Web School"),
                        const C_cources(
                            link:
                                "https://www.youtube.com/playlist?list=PL93xoMrxRJItcqJJgyCpA7Wv_YL-ii6Dl",
                            icon: "images/php.png",
                            title: "PHP",
                            name: "Wael abo hamza"),
                        const C_cources(
                            link:
                                "https://www.youtube.com/playlist?list=PLm_sigBWSRY3UFjbM1eEpHPai5IPZIFih",
                            icon: "images/laravel.png",
                            title: "Laravel",
                            name: "Jamaoui"),
                      ].animate(interval: 40.ms).flipH(duration: 250.ms),
                    )
                  ],
                )
              ],
            ))
          ]),
        ),
      ),
    );
  }
}
