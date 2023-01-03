import 'package:flutter/material.dart';
import 'package:meals_app/Screens/categories_screen.dart';
import './Screens/category_meals_screen.dart';
import './Screens/meal_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: const Color.fromARGB(255, 255, 255, 255),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
            .copyWith(secondary: Colors.white),
        fontFamily: "Raleway",
        textTheme: ThemeData.light().textTheme.copyWith(
            titleMedium: const TextStyle(
                fontSize: 25,
                fontFamily: "RobotoCondensed",
                color: Colors.white),
            titleLarge: const TextStyle(
                fontSize: 20,
                fontFamily: "RobotoCondensed",
                color: Colors.black)),
      ),
      routes: {
        '/': (ctx) => const CategoriesScreen(),
        '/mealCategories': (ctx) => const CategoryMeals(),
        '/mealDetails': (ctx) => const Meal(),
      },
    );
  }
}
