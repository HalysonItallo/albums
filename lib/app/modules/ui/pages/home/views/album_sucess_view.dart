import 'package:flutter/material.dart';

class AlbumSucessView extends StatelessWidget {
  const AlbumSucessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Text("Olá $index");
      },
    );
  }
}
