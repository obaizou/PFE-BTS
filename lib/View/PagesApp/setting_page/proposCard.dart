// ignore_for_file: file_names, avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';
import 'package:pfe/View/PagesApp/Setting.dart';

class proposCard extends StatelessWidget {
  const proposCard({super.key, required this.text, required this.title});
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(2), child: Container()),
      body: Container(
        margin: const EdgeInsets.only(bottom: 32),
        child: ListView(children: [
          Row(
            children: [
              Container(
                  padding: const EdgeInsets.only(
                    right: 36,
                  ),
                  margin: const EdgeInsets.only(bottom: 2),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Setting(),
                        ));
                      },
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                        size: 45,
                        color: Colors.blue,
                      ))),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 45),
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 23, right: 15),
            width: 1400,
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  wordSpacing: 2,
                  height: 2),
            ),
          )
        ]),
      ),
    );
  }
}
