import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:get/get.dart';
import 'package:pfe/View/PagesApp/LoginPage/Login.dart';
import 'package:pfe/View/PagesApp/SignUp/Sign_Up.dart';
import 'package:pfe/apiGemini/const.dart';
import 'package:pfe/NavBarButtom/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedPref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();

  Gemini.init(apiKey: GEMINI_API_KEY);
  runApp(const MyApp1());
}

class MyApp1 extends StatelessWidget {
  final bool onboarding;

  const MyApp1({super.key, this.onboarding = false});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: sharedPref.getString("id") == null ? "login" : "home",
      routes: {
        "login": (context) => const Login_Page(),
        "register": (context) => const Sign_UP(),
        "home": (context) => mainhome(),
      },
    );
  }
}
