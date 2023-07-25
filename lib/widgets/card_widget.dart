import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.title,
    required this.imgUrl,
  }) : super(key: key);

  final String title;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 5.0,
            ),
            Image.asset(imgUrl),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              title,
              style:
                  const TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 4.0,
            ),
            const Text("This is My Description"),
            const SizedBox(
              height: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}
