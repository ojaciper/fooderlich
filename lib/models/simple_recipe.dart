// ignore_for_file: public_member_api_docs, sort_constructors_first
class SimpleRecipe {
  String id;
  String dishImage;
  String title;
  String duration;
  String source;
  List<String> information;
  SimpleRecipe({
    required this.id,
    required this.dishImage,
    required this.title,
    required this.duration,
    required this.source,
    required this.information,
  });

  factory SimpleRecipe.fromjson(Map<String, dynamic> json) {
    return SimpleRecipe(
      id: json['id'],
      dishImage: json['dishImage'] as String,
      title: json["title"] as String,
      duration: json["duration"] as String,
      source: json["source"],
      information: json["information"].cast<String>() as List<String>,
    );
  }
}
