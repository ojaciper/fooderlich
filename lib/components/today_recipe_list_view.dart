import 'package:flutter/material.dart';
import 'package:fooderlich/components/card1.dart';
import 'package:fooderlich/components/card2.dart';
import 'package:fooderlich/components/card3.dart';
import 'package:fooderlich/models/explore_recipe.dart';

class TodayRecipeListView extends StatelessWidget {
  final List<ExploreRecipe> recipes;
  const TodayRecipeListView({required this.recipes, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recipes of the Day 🍈",
            style: Theme.of(context).textTheme.headline1,
          ),
          Container(
            height: 400,
            color: Colors.grey,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                final recipe = recipes[index];
                return buildCard(recipe);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 16);
              },
            ),
          )
        ],
      ),
    );
  }
}

buildCard(ExploreRecipe recipe) {
  if (recipe.cardType == RecipeCardType.card1) {
    return Card1(
      recipe: recipe,
    );
  } else if (recipe.cardType == RecipeCardType.card2) {
    return Card2(
      recipe: recipe,
    );
  } else if (recipe.cardType == RecipeCardType.card3) {
    return Card3(recipe: recipe);
  } else {
    return Exception('this card doesn\'t exist yes');
  }
}
