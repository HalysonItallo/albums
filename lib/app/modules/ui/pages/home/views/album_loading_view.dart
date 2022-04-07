import 'package:flutter/material.dart';

class AlbumLoadingView extends StatelessWidget {
  const AlbumLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
