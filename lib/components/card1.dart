import 'package:flutter/material.dart';

import '../fooderlich_theme.dart';
import '../models/explore_recipe.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key, required this.recipe});
  final ExploreRecipe recipe;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        constraints: const BoxConstraints.expand(
          width: 300,
          height: 350,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(recipe.backgroundImage), fit: BoxFit.cover),
            borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        child: Stack(
          children: [
            Text(
              recipe.subtitle,
              style: FooderlichTheme.darkTextTheme.bodyLarge,
            ),
            Positioned(
              top: 20,
              child: Text(
                recipe.title,
                style: FooderlichTheme.darkTextTheme.headlineLarge,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(
                recipe.message,
                style: FooderlichTheme.darkTextTheme.bodyLarge,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Text(
                recipe.authorName,
                style: FooderlichTheme.darkTextTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
