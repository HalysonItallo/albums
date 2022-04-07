import 'package:albums/app/domain/repositories/album_repository.dart';
import 'package:albums/app/domain/usecases/get_all_albums/get_all_albums_usecase.dart';

class GetAllAlbumsImp implements GetAllAlbumsUseCase {
  final AlbumRepository _albumRepository;
  GetAllAlbumsImp(this._albumRepository);

  @override
  Future<dynamic> call() async {
    return await _albumRepository.getAllAlbums();
  }
}
