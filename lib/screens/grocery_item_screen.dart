import 'package:flutter/material.dart';
import 'package:fooderlich/models/grocery_item.dart';

class GroceryItemScreen extends StatefulWidget {
  final Function(GroceryItem) onCreate;
  // final Function(GroceryItem) onUpdate;
  // final GroceryItem originalItem;

  const GroceryItemScreen(
    this.onCreate,
  );

  @override
  State<GroceryItemScreen> createState() => _GroceryItemScreenState();
}

class _GroceryItemScreenState extends State<GroceryItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
    );
  }
}
