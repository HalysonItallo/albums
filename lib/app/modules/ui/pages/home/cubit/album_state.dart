part of 'album_cubit.dart';

@immutable
abstract class AlbumState {}

class AlbumLoadingState extends AlbumState {}

class AlbumSucessState extends AlbumState {}

class AlbumFailureState extends AlbumState {}
