import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 235, 235),
      body: Center(
          child: Text(
        "You Don't have any Favorite Meals Yet -  Add What you Love",
        style: TextStyle(
            color: Theme.of(context).colorScheme.primary, fontSize: 25),
        textAlign: TextAlign.center,
      )),
    );
  }
}
