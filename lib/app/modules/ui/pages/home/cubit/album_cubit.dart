import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'album_state.dart';

class AlbumCubit extends Cubit<AlbumState> {
  String stateQuery = "failure";
  AlbumCubit() : super(AlbumLoadingState());

  Future<void> getAllAlbums(String state) async {
    stateQuery = state;
    if (state == "failure") {
      emit(AlbumFailureState());
    } else if (state == "loading") {
      emit(AlbumLoadingState());
    } else {
      emit(AlbumSucessState());
    }
  }
}
