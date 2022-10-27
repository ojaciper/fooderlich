// ignore_for_file: public_member_api_docs, sort_constructors_first
class Ingredient {
  String imageUrl;
  String title;
  String source;
  Ingredient({
    required this.imageUrl,
    required this.title,
    required this.source,
  });

  factory Ingredient.fromjson(Map<String, dynamic> json) {
    return Ingredient(
      imageUrl: json["imageUrl"] ?? '',
      title: json["title"] ?? "",
      source: json["source"] ?? "",
    );
  }
}
