import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../Widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meal App"),
        leading: const Icon(Icons.restaurant),
      ),
      backgroundColor: const Color.fromARGB(255, 238, 235, 235),
      body: GridView(
          padding: const EdgeInsets.all(8),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisExtent: 130,
              crossAxisSpacing: 10,
              mainAxisSpacing: 30),
          children: dummyCategories
              .map((i) => CategoryItem(i.title, i.color, i.id))
              .toList()),
    );
  }
}
