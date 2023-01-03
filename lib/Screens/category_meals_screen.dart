import 'package:flutter/material.dart';
import '../Widgets/meal_item.dart';
import '../dummy_data.dart';

class CategoryMeals extends StatelessWidget {
  const CategoryMeals({super.key});

  @override
  Widget build(BuildContext context) {
    final routeData =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final title = routeData["title"] as String;
    final id = routeData["id"] as String;
    final mealProp = dummzMeals.where((meal) {
      return meal.categories.contains(id);
    }).toList();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 235, 235),
      appBar: AppBar(title: Text(title)),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return MealItem(
                id: mealProp[index].id,
                image: mealProp[index].imageUrl,
                title: mealProp[index].title,
                duration: mealProp[index].duration.toString(),
                complexity: mealProp[index].complexity,
                affordability: mealProp[index].affordability,
              );
            },
            itemCount: mealProp.length,
          )),
    );
  }
}
