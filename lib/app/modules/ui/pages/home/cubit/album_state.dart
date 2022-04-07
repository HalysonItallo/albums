part of 'album_cubit.dart';

@immutable
abstract class AlbumState {}

class AlbumLoadingState extends AlbumState {
  AlbumLoadingState() : super();
}

class AlbumSucessState extends AlbumState {
  final dynamic data;

  AlbumSucessState(this.data) : super();

  List<Object> get props => data;
}

class AlbumFailureState extends AlbumState {
  final dynamic error;

  AlbumFailureState(this.error) : super();

  List<Object> get props => error;
}
