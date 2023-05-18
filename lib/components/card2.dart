import 'package:flutter/material.dart';

import '../fooderlich_theme.dart';
import '../models/explore_recipe.dart';
import 'author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key, required this.recipe});

  final ExploreRecipe recipe;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 300,
          height: 350,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(recipe.backgroundImage), fit: BoxFit.cover),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: [
            AuthorCard(
              authorName: recipe.authorName,
              title: recipe.role,
              imageProvider: AssetImage(recipe.profileImage),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      recipe.title,
                      style: FooderlichTheme.lightTextTheme.headlineLarge,
                    ),
                  ),
                  Positioned(
                      bottom: 70,
                      left: 16,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          recipe.subtitle,
                          style: FooderlichTheme.lightTextTheme.headlineLarge,
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
