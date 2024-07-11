// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:pfe/View/PagesApp/Home.dart';

class PageDescH extends StatelessWidget {
  const PageDescH(
      {super.key, required this.img, required this.title, required this.text});
  final String img;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(2), child: Container()),
      body: Container(
        margin: EdgeInsets.only(bottom: 32),
        child: ListView(children: [
          Row(
            children: [
              Container(
                  padding: const EdgeInsets.only(
                    right: 36,
                  ),
                  margin: const EdgeInsets.only(bottom: 62),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Home(),
                        ));
                      },
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                        size: 45,
                        color: Colors.blue,
                      ))),
              Container(
                child: Image.asset(
                  img,
                  height: 150,
                  width: 150,
                ),
              ),
            ],
          ),
          Container(
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
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
