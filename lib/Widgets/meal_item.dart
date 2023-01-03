import 'package:flutter/material.dart';
import '../model/meal.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String image;
  final String title;
  final String duration;
  final Complexity complexity;
  final Affordability affordability;

  const MealItem({
    super.key,
    required this.id,
    required this.image,
    required this.title,
    required this.duration,
    required this.complexity,
    required this.affordability,
  });

  void selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed('/mealDetails', arguments: {"id": id});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        elevation: 10,
        shadowColor: Colors.red,
        margin: const EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Stack(alignment: AlignmentDirectional.center, children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.network(
                  image,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(155, 0, 0, 0),
                  ),
                  width: 300,
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 26),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ]),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 6, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.schedule,
                                size: 30, color: Colors.red),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              "$duration min",
                              style: const TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.work, size: 30, color: Colors.red),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              complexity.toString().substring(
                                  complexity.toString().indexOf('.') + 1),
                              style: const TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.attach_money,
                                size: 30, color: Colors.red),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              affordability.toString().substring(
                                  affordability.toString().indexOf('.') + 1),
                              style: const TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
