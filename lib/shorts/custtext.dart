import 'package:flutter/material.dart';

class CustTextfieldV5 extends StatelessWidget {
  const CustTextfieldV5(
      {super.key,
      required this.hint,
      required this.mycontroller,
      required this.valid,
      required this.lignes});
  final String hint;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final int lignes;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 22, right: 22, top: 10),
        child: TextFormField(
          maxLines: lignes,
          validator: valid,
          controller: mycontroller,
          decoration: InputDecoration(
              hintText: hint,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 30, 118, 190)))),
        ));
  }
}
