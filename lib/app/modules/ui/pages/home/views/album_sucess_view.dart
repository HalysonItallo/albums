import 'package:flutter/material.dart';

class AlbumSucessView extends StatelessWidget {
  final List data;

  const AlbumSucessView({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Text(data[index]["title"]);
      },
    );
  }
}
