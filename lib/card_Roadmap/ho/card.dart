import 'package:flutter/material.dart';

class FancyCard extends StatelessWidget {
  const FancyCard({
    super.key,
    required this.image,
    required this.title,
    required this.page,
  });

  final Image image;
  final String title;
  final dynamic page;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              child: image,
            ),
            Text(
              title,
            ),
            OutlinedButton(
              child: const Text("En savoir plus"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => page,
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
