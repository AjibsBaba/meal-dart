import 'package:flutter/material.dart';
import 'package:meal_app/data/dummy_data.dart';
import 'package:meal_app/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: false,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.light_mode_outlined,
                      color: Colors.black87,
                      size: 18,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Good Morning',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.normal,
                          fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  'Samuel Ajibade',
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.w800),
                ),
              ],
            )),
        body: SafeArea(
          child: GridView(
            padding: const EdgeInsets.only(top: 32, left: 20, right: 20),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 18,
                mainAxisSpacing: 18),
            children: DUMMY_CATEGORIES
                .map((categoryData) => CategoryItem(
                    categoryData.id, categoryData.title, categoryData.color))
                .toList(),
          ),
        ));
  }
}
