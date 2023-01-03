import "package:flutter/material.dart";

class Ingredients extends StatelessWidget {
  final List ingredients;

  const Ingredients({super.key, required this.ingredients});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Ingredients",
          style: TextStyle(fontSize: 30, fontFamily: "RobotoCondensed"),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 220,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Card(
                elevation: 20,
                shadowColor: Colors.red,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                          ),
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              ingredients[index],
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: ingredients.length,
                  ),
                )))
      ],
    );
  }
}
