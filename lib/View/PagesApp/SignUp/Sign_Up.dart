// ignore_for_file: avoid_unnecessary_containers, camel_case_types, file_names, use_build_context_synchronously, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:pfe/View/PagesApp/LoginPage/Login.dart';
import 'package:pfe/components/crud.dart';
import 'package:pfe/components/valid.dart';
import 'package:pfe/constant/linkapi.dart';
import 'package:pfe/shorts/passwordText.dart';
import 'package:pfe/shorts/textbox.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Sign_UP extends StatefulWidget {
  const Sign_UP({super.key});

  @override
  State<Sign_UP> createState() => _Sign_UPState();
}

class _Sign_UPState extends State<Sign_UP> {
  GlobalKey<FormState> formstate = GlobalKey();
  final Crud _crud = Crud();
  bool isLoading = false;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  signUp() async {
    if (formstate.currentState!.validate()) {
      isLoading = true;
      setState(() {});
      var response = await _crud.postRequest(linkSignUp, {
        "username": username.text,
        "email": email.text,
        "password": password.text,
      });
      isLoading = false;
      setState(() {});
      if (response['status'] == "success") {
        Alert(
          context: context,
          type: AlertType.success,
          title: "Succès",
          desc: "Compte créé avec succès",
          buttons: [
            DialogButton(
              onPressed: () {
                Get.to(Login_Page());
              },
              width: 120,
              child: const Text(
                "Connexion",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ).show();
      } else {
        print("SignUp Fail");
      }
    }
  }

  bool reminder = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isLoading == true
          ? const Center(child: CircularProgressIndicator())
          : Scaffold(
              appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(2), child: Container()),
              body: Container(
                child: ListView(children: [
                  Form(
                    key: formstate,
                    child: Column(
                      children: [
                        SizedBox(
                            width: 320,
                            child: Image.asset("images/images/SignUp.png")),
                        Container(
                          margin: const EdgeInsets.only(right: 100),
                          child: const Text(
                            "Créer un compte",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 70),
                          child: const Text(
                            "Veuillez vous inscrire pour continuer",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        CustTextfield(
                            valid: (val) {
                              return validInput(val!, 5, 20);
                            },
                            mycontroller: username,
                            hint: "Identifiant",
                            icone: Icons.person),
                        CustTextfield(
                            valid: (val) {
                              return validateEmail(val!);
                            },
                            mycontroller: email,
                            hint: "email@gmail.com",
                            icone: Icons.mail),
                        CustTextfieldPAss(
                            valid: (val) {
                              return validInput(val!, 6, 10);
                            },
                            mycontroller: password,
                            hint: "..............",
                            icone: Icons.lock),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color.fromARGB(255, 30, 118, 190)),
                          child: MaterialButton(
                            padding:
                                const EdgeInsets.only(right: 110, left: 110),
                            child: const Text(
                              "S'inscrire",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () async {
                              await signUp();
                            },
                          ),
                        )
                            .animate(
                              onPlay: (controller) => controller.repeat(),
                            )
                            .shimmer(
                              duration: 1405.ms,
                            ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(left: 62),
                                  child: const Text(
                                      "Vous avez déjà un compte ? ")),
                              InkWell(
                                child: const Text(
                                  "Connexion",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 14, 68, 111)),
                                ),
                                onTap: () {
                                  Get.to(Login_Page());
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              ).animate().flipH(),
            ),
    );
  }
}
