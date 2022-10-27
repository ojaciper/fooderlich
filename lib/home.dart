import 'package:flutter/material.dart';
import 'package:fooderlich/models/model.dart';
import 'package:fooderlich/screens/explore_screen.dart';
import 'package:fooderlich/screens/glocery_screen.dart';
import 'package:fooderlich/screens/recipes_screen.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // int _seletedIndex = 0;
  static List<Widget> pages = [
    ExploreScreen(),
    RecipesScreen(),
    const GloceryScreen()
  ];
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _seletedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(builder: (context, tabManager, child) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Fooderlich",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        body: pages[tabManager.selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: tabManager.selectedTab,
          onTap: (index) {
            tabManager.goToTab(index);
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: "Recipes",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: "To Buy",
            ),
          ],
        ),
      );
    });
  }
}
