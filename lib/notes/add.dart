// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pfe/View/PagesApp/Notes.dart';
import 'package:pfe/components/crud.dart';
import 'package:pfe/constant/linkapi.dart';
import 'package:pfe/main.dart';
import 'package:pfe/shorts/custtext.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({super.key});

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();
  Crud crud = Crud();
  bool isLoading = false;

  Future<void> addNotes() async {
    if (formstate.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });

      var response = await crud.postRequest(linkadd, {
        "title": title.text,
        "content": content.text,
        "id": sharedPref.getString("id"),
      });

      setState(() {
        isLoading = false;
      });

      if (response['status'] == "success") {
        Get.back();
        // Get.off(Notes());
        // Get.offAll(Notes());
        // Get.offAll(Notes());
        // Navigator.of(context).pop(MaterialPageRoute(
        //   builder: (context) => Notes(),
        // ));
      } else {
        print("rj3 l add.dart");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              padding: const EdgeInsets.all(10),
              child: Form(
                key: formstate, // Assign the key to the Form widget
                child: ListView(
                  children: [
                    CustTextfieldV5(
                      lignes: 1,
                      hint: "Titre",
                      mycontroller: title,
                      valid: (val) {
                        return null;
                      },
                    ),
                    CustTextfieldV5(
                      lignes: 15,
                      hint: "Contenu",
                      mycontroller: content,
                      valid: (val) {
                        return null;
                      },
                    ),
                    Container(height: 20),
                    MaterialButton(
                      onPressed: () async {
                        await addNotes(); // Call the method without using the constructor
                      },
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: const Text("Ajouter"),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
