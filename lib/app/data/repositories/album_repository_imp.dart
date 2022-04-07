import 'package:albums/app/data/connections/connections.dart';
import 'package:albums/app/data/datasource/remote/graph_ql_service.dart';
import 'package:albums/app/domain/repositories/album_repository.dart';
import 'package:get_it/get_it.dart';

class AlbumRepositoryImp implements AlbumRepository {
  final Connections _connections = GetIt.I.get<Connections>();
  final GraphQLService _graphQLService = GetIt.I.get<GraphQLService>();

  @override
  Future<dynamic> getAllAlbums() async {
    return await _graphQLService.performQuery(
      _connections.getAllAlbums(),
      variables: {
        "options": {
          "paginate": {
            "page": 1,
            "limit": 5,
          }
        },
      },
    );
  }
}
