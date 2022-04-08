import 'package:albums/app/data/datasource/remote/connections/connections.dart';
import 'package:albums/app/data/datasource/remote/graph_ql_service.dart';
import 'package:albums/app/data/repositories/album_repository_imp.dart';
import 'package:albums/app/domain/usecases/get_all_albums/get_all_albums_imp.dart';
import 'package:albums/app/modules/ui/pages/home/cubit/album_cubit.dart';
import 'package:get_it/get_it.dart';

void setupInjection() {
  final getIt = GetIt.I;

  getIt.registerFactory(() => AlbumCubit());
  getIt.registerFactory(() => GraphQLService());
  getIt.registerFactory(() => Connections());
  getIt.registerFactory(() => AlbumRepositoryImp());
  getIt.registerFactory(
    () => GetAllAlbumsImp(
      GetIt.I.get<AlbumRepositoryImp>(),
    ),
  );
}
