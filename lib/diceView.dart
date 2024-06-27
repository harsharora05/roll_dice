import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class Diceview extends StatefulWidget {
  const Diceview({super.key});

  @override
  State<Diceview> createState() => _DiceviewState();
}

class _DiceviewState extends State<Diceview> {
  late int r;
  int random(int min, int max) {
    return min + Random().nextInt(max - min);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    r = random(1, 7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Roll Dice"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                "assets/dice/dice-$r.png",
              ),
              height: 300,
              width: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  r = random(1, 7);
                  setState(() {});
                },
                child: const Text("Roll"))
          ],
        ),
      ),
    );
  }
}
