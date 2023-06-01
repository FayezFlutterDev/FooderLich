import 'package:flutter/material.dart';
import 'package:fooderlich/screens/explore_screen.dart';
import 'screens/grocery_screen.dart';
import 'screens/recipes_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> pages = [
    ExploreScreen(),
    RecipesScreen(),
    const GroceryScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
              ),
              label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
              ),
              label: "Receipes"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: "To Buy"),
        ],
      ),
    );
  }
}
