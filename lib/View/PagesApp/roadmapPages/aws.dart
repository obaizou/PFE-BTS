// ignore_for_file: avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';

class raws extends StatelessWidget {
  const raws({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(2), child: Container()),
      body: Container(
        margin: const EdgeInsets.only(top: 6),
        child: ListView(children: [
          Container(
              padding: const EdgeInsets.only(
                right: 36,
              ),
              margin: const EdgeInsets.only(bottom: 62, right: 202),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    size: 45,
                    color: Colors.blue,
                  ))),
          Image.asset("images/aws.jpg")
        ]),
      ),
    );
  }
}
