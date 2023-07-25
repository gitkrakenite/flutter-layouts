import 'package:flutter/material.dart';
import 'package:lesson_1/widgets/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Layouts"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CardWidget(
              title: "Hello There",
              imgUrl: "assets/hello.png",
            ),
            Row(
              children: const [
                Expanded(
                  child: CardWidget(
                    title: "Rocket 1",
                    imgUrl: "assets/rocket.png",
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    title: "Rocket 2",
                    imgUrl: "assets/rocket.png",
                  ),
                ),
              ],
            ),
            const CardWidget(
              title: "Goodbye For Now",
              imgUrl: "assets/hello.png",
            )
          ],
        ),
      ),
    );
  }
}
