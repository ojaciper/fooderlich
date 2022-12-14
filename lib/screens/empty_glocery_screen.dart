import 'package:flutter/material.dart';

class EmptyGloceryScreen extends StatelessWidget {
  const EmptyGloceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.asset("assets/fooderlich_assets/empty_list.png"),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "No Groceries",
            style: TextStyle(fontSize: 21),
          ),
          const SizedBox(height: 16),
          const Text(
            "Shopping for ingredients?\n Tap the + button to write them down!",
            textAlign: TextAlign.center,
          ),
          MaterialButton(
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            color: Colors.green,
            onPressed: () {},
            child: const Text("Browse Recipes"),
          )
        ],
      )),
    );
  }
}
