import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich.dart';
import 'package:fooderlich/home.dart';
import 'package:fooderlich/models/model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      title: "Fooderlich",
      theme: theme,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => TabManager(),
          ),
          ChangeNotifierProvider(
            create: (context) => GroceryManager(),
          )
        ],
        child: const Home(),
      ),
    );
  }
}
