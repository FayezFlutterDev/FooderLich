import 'package:flutter/material.dart';
import 'package:fooderlich/card1.dart';

import 'card2.dart';
import 'card3.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> pages = const [
    Card1(),
    Card2(),
    Card3(),
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
          style: Theme.of(context).textTheme.headlineLarge,
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
                Icons.card_giftcard,
              ),
              label: "Card"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.card_giftcard,
              ),
              label: "Card2"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.card_giftcard,
              ),
              label: "Card3"),
        ],
      ),
    );
  }
}
