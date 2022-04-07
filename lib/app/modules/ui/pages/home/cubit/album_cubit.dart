import 'package:albums/app/domain/usecases/get_all_albums/get_all_albums_imp.dart';
import 'package:albums/app/domain/usecases/get_all_albums/get_all_albums_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';

part 'album_state.dart';

class AlbumCubit extends Cubit<AlbumState> {
  final GetAllAlbumsUseCase _getAllAlbums = GetIt.I.get<GetAllAlbumsImp>();

  String stateQuery = "failure";
  AlbumCubit() : super(AlbumLoadingState());

  Future<void> getAllAlbums() async {
    var result = await _getAllAlbums.call();

    try {
      if (result.hasException) {
        emit(AlbumFailureState(result.exception.graphqlErrors[0]));
      } else {
        emit(AlbumSucessState(result.data));
      }
    } catch (e) {
      emit(AlbumFailureState(e.toString()));
    }
  }
}
