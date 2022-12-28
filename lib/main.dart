import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_meal_screen.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/meal_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal App',
      theme: ThemeData(
          primarySwatch: Colors.teal,
          fontFamily: 'Poppins',
          appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Colors.black87),
              elevation: 0,
              color: Colors.transparent)),
      routes: {
        '/': (ctx) => const CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Meal App',
        ),
      ),
    );
  }
}
