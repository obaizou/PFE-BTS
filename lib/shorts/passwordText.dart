// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustTextfieldPAss extends StatefulWidget {
  const CustTextfieldPAss(
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
  State<CustTextfieldPAss> createState() => _CustTextfieldPAssState();
}

class _CustTextfieldPAssState extends State<CustTextfieldPAss> {
  bool secourText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 22, right: 22, top: 10),
        child: TextFormField(
          obscureText: secourText,
          validator: widget.valid,
          controller: widget.mycontroller,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      secourText = !secourText;
                    });
                  },
                  icon: Icon(
                      secourText ? Icons.visibility_off : Icons.visibility)),
              hintText: widget.hint,
              prefixIcon: Icon(widget.icone),
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
