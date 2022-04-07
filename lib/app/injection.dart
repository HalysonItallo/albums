import 'package:albums/app/modules/ui/pages/home/cubit/album_cubit.dart';
import 'package:get_it/get_it.dart';

void setupInjection() {
  final getIt = GetIt.I;

  getIt.registerFactory(() => AlbumCubit());
}
