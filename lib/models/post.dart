// ignore_for_file: public_member_api_docs, sort_constructors_first
class Post {
  String id;
  String profileImageUrl;
  String comment;
  String foodPictureUrl;
  String timestamp;
  Post({
    required this.id,
    required this.profileImageUrl,
    required this.comment,
    required this.foodPictureUrl,
    required this.timestamp,
  });

  factory Post.fromjson(Map<String, dynamic> json) {
    return Post(
      id: json["id"] ?? '',
      profileImageUrl: json["profileImageUrl"] ?? '',
      comment: json["comment"] ?? '',
      foodPictureUrl: json["foodPictureUrl"] ?? '',
      timestamp: json["timestamp"] ?? '',
    );
  }
}
