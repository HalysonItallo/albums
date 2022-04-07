import 'package:albums/app/modules/ui/pages/home/cubit/album_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'ui/pages/home/home_page.dart';

class HomeModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) => BlocProvider<AlbumCubit>(
        create: (context) => AlbumCubit(),
        child: const HomePage(),
      ),
    ),
  ];
}
