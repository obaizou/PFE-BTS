// ignore_for_file: camel_case_types, avoid_unnecessary_containers, file_names, use_build_context_synchronously, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:pfe/View/PagesApp/SignUp/Sign_Up.dart';
import 'package:pfe/NavBarButtom/home.dart';
import 'package:pfe/components/crud.dart';
import 'package:pfe/components/valid.dart';
import 'package:pfe/constant/linkapi.dart';
import 'package:pfe/main.dart';
import 'package:pfe/shorts/passwordText.dart';
import 'package:pfe/shorts/textbox.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  GlobalKey<FormState> formstate = GlobalKey();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool reminder = false;
  bool isLoading = false;

  Crud crud = Crud();
  login() async {
    if (formstate.currentState!.validate()) {
      isLoading = true;
      setState(() {});
      var response = await crud.postRequest(linkLogin, {
        "email": email.text,
        "password": password.text,
      });
      isLoading = false;
      setState(() {});
      if (response['status'] == "success") {
        sharedPref.setString("id", response['data']['id'].toString());
        sharedPref.setString("username", response['data']['username']);
        sharedPref.setString("email", response['data']['email']);
        Get.offAll(mainhome());
      } else {
        print("object");
        Alert(
          context: context,
          type: AlertType.warning,
          title: "Attention",
          desc: "Mauvais email ou mot de passe",
          buttons: [],
        ).show();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(2), child: Container()),
      body: Container(
        child: ListView(children: [
          Form(
            key: formstate,
            child: Column(
              children: [
                SizedBox(
                    width: 320, child: Image.asset("images/icons/Login1.png")),
                Container(
                  margin: const EdgeInsets.only(right: 170),
                  child: const Text(
                    "Connexion",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 4),
                  padding: const EdgeInsets.only(right: 45),
                  child: const Text(
                    "Veuillez vous connecter pour continuer",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                CustTextfield(
                    valid: (val) {
                      return validateEmail(val!);
                    },
                    mycontroller: email,
                    hint: "email@gmail.com",
                    icone: Icons.email),
                CustTextfieldPAss(
                    valid: (val) {
                      return validInput(val!, 3, 20);
                    },
                    mycontroller: password,
                    hint: "..............",
                    icone: Icons.lock),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromARGB(255, 30, 118, 190)),
                  child: MaterialButton(
                    padding: const EdgeInsets.only(right: 110, left: 110),
                    child: const Text(
                      "Connexion",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () async {
                      isLoading = true;
                      setState(() {});
                      await login();
                      isLoading = false;
                      setState(() {});
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
                          child: const Text("Vous n'avez pas de compte ? ")),
                      InkWell(
                        child: const Text(
                          "S'inscrire",
                          style: TextStyle(
                              color: Color.fromARGB(255, 14, 68, 111)),
                        ),
                        onTap: () {
                          Get.to(Sign_UP());
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          if (isLoading) Center(child: CircularProgressIndicator()),
        ]),
      ).animate().flipH(),
    );
  }
}
