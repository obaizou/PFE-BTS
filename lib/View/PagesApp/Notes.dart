// ignore_for_file: file_names, avoid_unnecessary_containers, avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pfe/components/crud.dart';
import 'package:pfe/constant/linkapi.dart';
import 'package:pfe/main.dart';
import 'package:pfe/notes/add.dart';
import 'package:pfe/notes/edit.dart';
import 'package:pfe/shorts/notes_cont.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

// ignore: must_be_immutable
class Notes extends StatelessWidget {
  Notes({super.key});
  static const spinkit = SpinKitDualRing(
    color: Colors.blue,
    size: 50.0,
  );
  getNotes() async {
    var response = await _crud
        .postRequest(linkviewNotes, {"id": sharedPref.getString("id")});
    return response;
  }

  final Crud _crud = Crud();

  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(2), child: Container()),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 65, 162, 243),
        onPressed: () {
          Get.to(AddNotes());
          // Navigator.of(context).push(MaterialPageRoute(
          //   builder: (context) => const AddNotes(),
          // ));
          print("hi");
        },
        child: Container(
            child: const Icon(
          Icons.add,
          color: Colors.white,
        )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      backgroundColor: Theme.of(context).colorScheme.background,
      key: scaffoldkey,
      body: Container(
        margin: const EdgeInsets.only(bottom: 80),
        child: ListView(children: [
          Container(
              child: Column(
            children: [
              Column(children: [
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
                            "Notes",
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
                FutureBuilder(
                  future: getNotes(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data['status'] == 'fail') {
                        return const Center(
                            child: Text(
                          "Vous n'avez pas de note",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ));
                      }
                      return ListView.builder(
                          itemCount: snapshot.data['data'].length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, i) {
                            return noteContainer(
                                onDelete: () async {
                                  var response = await _crud.postRequest(
                                      linkdelete, {
                                    "id": snapshot.data['data'][i]['notes_id']
                                        .toString()
                                  });
                                  if (response['status'] == "success") {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => Notes(),
                                    ));
                                  }
                                },
                                ontap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => EditNotes(
                                            notes: snapshot.data['data'][i],
                                          )));
                                },
                                title:
                                    "${snapshot.data['data'][i]['notes_title']}",
                                content:
                                    "${snapshot.data['data'][i]['notes_content']}");
                          });
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      // return const Center(child: Text("Loadisqng..."));
                      return Container(
                          margin: EdgeInsets.only(top: 20),
                          child: const Center(child: spinkit));
                    }
                    return const Center(child: Text("Loadng..."));
                  },
                )
              ])
            ],
          ))
        ]),
      ),
    );
  }
}
