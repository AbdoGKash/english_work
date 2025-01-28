import 'package:english_work/core/helper/color_manger.dart';
import 'package:flutter/material.dart';

class Translate extends StatelessWidget {
  const Translate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsManager.primary,
          centerTitle: true,
          title: const Text(
            "Translate",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const Center(
          child: Text("Translate"),
        ));
  }
}
