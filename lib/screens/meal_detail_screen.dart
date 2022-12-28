import 'package:flutter/material.dart';
import 'package:meal_app/data/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectedMeal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Card(
              elevation: 0,
              borderOnForeground: false,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                selectedMeal.title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24),
                                textWidthBasis: TextWidthBasis.longestLine,
                              ),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.schedule,
                                  color: Colors.black54,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '${selectedMeal.duration} Min',
                                  style: const TextStyle(
                                    color: Colors.black54,
                                  ),
                                )
                              ],
                            )
                          ],
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Column(
                      children: [
                        Text(
                          selectedMeal.description,
                          style: const TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w300,
                              fontSize: 16),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Ingredients',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          selectedMeal.ingredients[0],
                          style: const TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                        Text(
                          selectedMeal.ingredients[1],
                          style: const TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                        Text(
                          selectedMeal.ingredients[3],
                          style: const TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
