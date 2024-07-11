// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class noteContainer extends StatelessWidget {
  const noteContainer(
      {super.key,
      required this.ontap,
      required this.title,
      required this.content,
      required this.onDelete});
  final String title;
  final String content;
  final void Function()? ontap;
  final void Function()? onDelete;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Card(
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Expanded(
            child: Image.asset(
              "images/add.png",
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            flex: 2,
            child: ListTile(
              title: Text(title),
              subtitle: Text(content),
              trailing: IconButton(
                  onPressed: onDelete, icon: const Icon(Icons.delete)),
            ),
          )
        ]),
      ),
    );
  }
}
