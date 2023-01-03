import 'package:flutter/material.dart';
import 'package:meals_app/Widgets/ingredients.dart';
import 'package:meals_app/Widgets/steps.dart';
import '../dummy_data.dart';

class Meal extends StatelessWidget {
  const Meal({super.key});

  @override
  Widget build(BuildContext context) {
    final route =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final id = route['id'] as String;
    final mealDetail = dummzMeals.firstWhere((meal) => meal.id == id);
    final ingredients = mealDetail.ingredients;
    final steps = mealDetail.steps;
    return Scaffold(
        appBar: AppBar(title: Text(mealDetail.title)),
        backgroundColor: const Color.fromARGB(255, 238, 235, 235),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                child: Image.network(
                  mealDetail.imageUrl,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width * 0.6,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Ingredients(ingredients: ingredients),
              const SizedBox(
                height: 60,
              ),
              Steps(steps: steps),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ));
  }
}
