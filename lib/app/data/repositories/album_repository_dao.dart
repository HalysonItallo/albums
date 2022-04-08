import 'package:albums/app/data/datasource/local/interfaces/repository_dao_interface.dart';
import 'package:albums/app/data/models/album_model.dart';
import 'package:floor/floor.dart';

@dao
abstract class AlbumRepositoryDao extends IRepositoryDaoInterface<AlbumModel> {
  @Query('SELECT * FROM Albums WHERE id = :id')
  Future<AlbumModel?> getById(int id);

  @Query('SELECT * FROM Albums')
  Future<List<AlbumModel>> getAll();
}
