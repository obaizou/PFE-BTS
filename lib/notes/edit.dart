// ignore_for_file: prefer_typing_uninitialized_variables, use_build_context_synchronously, avoid_print

import 'package:flutter/material.dart';
import 'package:pfe/View/PagesApp/Notes.dart';
import 'package:pfe/components/crud.dart';
import 'package:pfe/constant/linkapi.dart';
import 'package:pfe/shorts/custtext.dart';

class EditNotes extends StatefulWidget {
  final notes;
  const EditNotes({super.key, this.notes});

  @override
  State<EditNotes> createState() => _EditNotesState();
}

class _EditNotesState extends State<EditNotes> {
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

      var response = await crud.postRequest(linkedit, {
        "title": title.text,
        "content": content.text,
        "id": widget.notes["notes_id"].toString(),
      });

      setState(() {
        isLoading = false;
      });

      if (response['status'] == "success") {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Notes(),
        ));
      } else {
        print("rj3 l edit.dart");
      }
    }
  }

  @override
  void initState() {
    title.text = widget.notes['notes_title'];
    content.text = widget.notes['notes_content'];
    super.initState();
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
                      child: const Text("Enregistrer"),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
