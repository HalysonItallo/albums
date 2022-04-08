import 'dart:async';

import 'package:albums/app/data/models/album_model.dart';
import 'package:albums/app/data/repositories/album_repository_dao.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version: 1, entities: [AlbumModel])
abstract class AppDatabase extends FloorDatabase {
  AlbumRepositoryDao get albumRepositoryDao;
}
