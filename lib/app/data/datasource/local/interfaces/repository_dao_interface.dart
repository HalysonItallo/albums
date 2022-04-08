import 'package:albums/app/data/models/model_base.dart';
import 'package:floor/floor.dart';

abstract class IRepositoryDaoInterface<Table extends ModelBase> {
  @insert
  Future<int> insertItem(Table item);

  @update
  Future<int> updateItem(Table item);

  @delete
  Future<int> deleteItem(Table item);
}
