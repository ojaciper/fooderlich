// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'ingredient.dart';
import 'instruction.dart';

class RecipeCardType {
  static const card1 = 'card1';
  static const card2 = 'card2';
  static const card3 = 'card3';
}

class ExploreRecipe {
  String id;
  String cardType;
  String title;
  String subTitle;
  String backgroundImage;
  String backgroundImageSource;
  String message;
  String authorName;
  String role;
  String profileImage;
  int durationInMinutes;
  String dietType;
  int calories;
  List<String> tags = const [];
  String description;
  String source;
  List<Ingredient> ingredients = const [];
  List<Instruction> instructions = const [];
  ExploreRecipe({
    required this.id,
    required this.cardType,
    this.title = '',
    this.subTitle = '',
    this.backgroundImage = '',
    this.backgroundImageSource = '',
    this.message = '',
    this.authorName = '',
    this.role = '',
    this.profileImage = '',
    this.durationInMinutes = 0,
    this.dietType = '',
    this.calories = 0,
    this.tags = const [],
    this.description = '',
    this.source = '',
    this.ingredients = const [],
    this.instructions = const [],
  });

  factory ExploreRecipe.fromJson(Map<String, dynamic> json) {
    final ingredients = <Ingredient>[];
    final instructions = <Instruction>[];

    if (json['ingredients'] != null) {
      json['ingredients'].forEach((v) {
        ingredients.add(Ingredient.fromjson(v));
      });
    }

    if (json['instructions'] != null) {
      json['instructions'].forEach((v) {
        instructions.add(Instruction.fromJson(v));
      });
    }

    return ExploreRecipe(
      id: json["id"] ?? "",
      cardType: json["cardType"] ?? "",
      title: json["title"] ?? "",
      subTitle: json["subTitle"] ?? "",
      backgroundImage: json["backgroundImage"] ?? '',
      backgroundImageSource: json["backgroundImageSource"] ?? '',
      message: json["message"] ?? '',
      authorName: json["authorName"] ?? '',
      role: json["role"] ?? "",
      profileImage: json["profileImage"] ?? "",
      durationInMinutes: json["durationInMinutes"] ?? 0,
      dietType: json["dietType"] ?? "",
      calories: json["calories"] ?? 0,
      tags: json["tags"].cast<String>() ?? [],
      description: json["description"] ?? "",
      source: json["source"] ?? "",
      ingredients: ingredients,
      instructions: instructions,
    );
  }
}
