// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Croadmap extends StatelessWidget {
  const Croadmap({
    super.key,
    required this.logo,
    required this.txt,
    required this.page,
  });
  final String logo;
  final String txt;
  final dynamic page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => page,
        ));
      },
      child: Container(
          margin: const EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(113, 112, 194, 230),
              Colors.blue,
            ]),
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(80),
              bottomRight: Radius.circular(80),
            ),
          ),
          width: 500,
          height: 150,
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 12),
                child: Image.asset(
                  logo,
                  width: 100,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 15),
                width: 155,
                child: Text(txt,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 230, 230, 230),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    )),
              )
            ],
          )),
    );
  }
}
