import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';


class FavouritesScreen extends StatefulWidget {
  final List<Meal> favouriteMeals;

  FavouritesScreen(this.favouriteMeals);

  @override
  _FavouritesScreenState createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    if (widget.favouriteMeals.isEmpty) {
      return Center(
        child: Text('No Favs...'),
      );
    }
    else{
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: widget.favouriteMeals[index].id,
            title: widget.favouriteMeals[index].title,
            affordability: widget.favouriteMeals[index].affordability,
            complexity: widget.favouriteMeals[index].complexity,
            duration: widget.favouriteMeals[index].duration,
            imageUrl: widget.favouriteMeals[index].imageUrl,
          );
        },
        itemCount: widget.favouriteMeals.length,
      );
    }
  }
}
