import 'dart:convert';

AlbumEntity albumFromJson(String str) => AlbumEntity.fromJson(json.decode(str));

String albumToJson(AlbumEntity data) => json.encode(data.toJson());

class AlbumEntity {
  AlbumEntity({
    required this.userId,
    required this.id,
    required this.title,
  });

  final int userId;
  final int id;
  final String title;

  factory AlbumEntity.fromJson(Map<String, dynamic> json) => AlbumEntity(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
      };
}
