// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

class desc_home extends StatelessWidget {
  const desc_home({
    super.key,
    required this.image_Card,
    required this.title_Card,
    required this.text_Card,
    required this.page,
  });
  final String image_Card;
  final String title_Card;
  final String text_Card;
  final dynamic page;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(116, 142, 199, 255),
      ),
      child: Row(
        children: [
          Image.asset(
            image_Card,
            height: 150,
            width: 150,
          ),
          Container(
            child: Column(
              children: [
                SizedBox(
                    width: 185,
                    child: Text(
                      title_Card,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )),
                Container(
                    width: 185,
                    child: Text(
                      text_Card,
                      style: const TextStyle(fontSize: 11),
                    )),
                Container(
                  padding: const EdgeInsets.only(
                    right: 65,
                  ),
                  child: MaterialButton(
                      color: const Color.fromARGB(255, 53, 165, 240),
                      child: const Text(
                        "Lire la suite...",
                        style:
                            TextStyle(color: Color.fromARGB(255, 22, 75, 119)),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => page,
                        ));
                      }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
