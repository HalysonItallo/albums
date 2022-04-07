import 'package:flutter/material.dart';

class AlbumSucessView extends StatelessWidget {
  final List data;

  const AlbumSucessView({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(data);
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Text("Olá ");
      },
    );
  }
}
