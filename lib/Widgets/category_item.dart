import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  const CategoryItem(this.title, this.color, this.id, {super.key});

  void selectCategory(BuildContext context) {
    Navigator.of(context)
        .pushNamed('/mealCategories', arguments: {"title": title, "id": id});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [color, color.withOpacity(0.7)]),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          "$title Meals",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
