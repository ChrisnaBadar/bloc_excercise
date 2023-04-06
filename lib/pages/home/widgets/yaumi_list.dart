import 'package:bloc_practice/pages/home/widgets/yaumi_tile.dart';
import 'package:flutter/material.dart';

class YaumiList extends StatelessWidget {
  const YaumiList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10, itemBuilder: (context, index) => const YaumiTile());
  }
}
