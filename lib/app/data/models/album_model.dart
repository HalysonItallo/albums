import 'dart:convert';
import 'package:albums/app/data/models/model_base.dart';
import 'package:floor/floor.dart';

AlbumModel albumFromJson(String str) => AlbumModel.fromJson(json.decode(str));
String albumToJson(AlbumModel data) => json.encode(data.toJson());

@Entity(tableName: 'Albums')
class AlbumModel extends ModelBase {
  AlbumModel({
    required int id,
    required this.title,
  }) : super(id);

  final String title;

  factory AlbumModel.fromJson(Map<String, dynamic> json) => AlbumModel(
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
      };
}
