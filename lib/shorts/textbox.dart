import 'package:flutter/material.dart';

class CustTextfield extends StatelessWidget {
  const CustTextfield(
      {super.key,
      required this.hint,
      required this.icone,
      required this.mycontroller,
      required this.valid});
  final String hint;
  final IconData icone;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 22, right: 22, top: 10),
        child: TextFormField(
          validator: valid,
          controller: mycontroller,
          decoration: InputDecoration(
              hintText: hint,
              prefixIcon: Icon(icone),
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
