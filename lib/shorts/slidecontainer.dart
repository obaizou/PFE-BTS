import 'package:flutter/material.dart';

class slideC extends StatelessWidget {
  const slideC({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Colors.blue, Color.fromARGB(255, 115, 198, 234)]),
          borderRadius: BorderRadius.circular(25)),
      margin: const EdgeInsets.only(left: 8, right: 8),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
