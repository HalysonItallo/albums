import 'package:floor/floor.dart';

class ModelBase {
  ModelBase(
    this.id,
  );

  @PrimaryKey(autoGenerate: true)
  final int id;
}
