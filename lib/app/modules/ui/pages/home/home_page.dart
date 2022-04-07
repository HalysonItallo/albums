import 'package:albums/app/modules/ui/pages/home/views/album_failure_view.dart';
import 'package:albums/app/modules/ui/pages/home/views/album_loading_view.dart';
import 'package:albums/app/modules/ui/pages/home/views/album_sucess_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'cubit/album_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AlbumCubit _albumCubit = GetIt.I.get<AlbumCubit>();

  @override
  void dispose() {
    _albumCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: BlocBuilder<AlbumCubit, AlbumState>(
          builder: (context, state) {
            if (state is AlbumFailureState) {
              return const AlbumFailureView();
            } else if (state is AlbumLoadingState) {
              return const AlbumLoadingView();
            } else {
              List data = (state as AlbumSucessState).data['data'];
              return AlbumSucessView(data: data);
            }
          },
        ),
      ),
    );
  }
}
