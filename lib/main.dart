import 'package:flutter/material.dart';
import 'package:fooderlich/home.dart';
import 'package:provider/provider.dart';

import 'fooderlich_theme.dart';
import 'models/models.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();

    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          
          ChangeNotifierProvider(create: (context) => TabManager()),
          ChangeNotifierProvider(create: (context) => GroceryManager()),
        ],
        child: const Home(),
      ),
    );
  }
}
