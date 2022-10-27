import 'package:flutter/material.dart';
import 'package:fooderlich/models/model.dart';
import 'package:fooderlich/screens/empty_glocery_screen.dart';
import 'package:fooderlich/screens/grocery_item_screen.dart';
import 'package:provider/provider.dart';

class GloceryScreen extends StatelessWidget {
  const GloceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final manager = Provider.of<GroceryManager>(context, listen: false);
    return Scaffold(
      body: buildGroceryScreen(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GroceryItemScreen(
                (item) {
                  manager.addItem(item);
                },
              ),
            ),
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}

Widget buildGroceryScreen() {
  return Consumer<GroceryManager>(
    builder: (context, manager, child) {
      if (manager.groceryItems.isNotEmpty) {
        return Container();
      } else {
        return const EmptyGloceryScreen();
      }
    },
  );
}
