import 'package:flutter/material.dart';

class GridImageView extends StatelessWidget {
  const GridImageView({super.key, required this.color, required this.total});

  final Color color;
  final int total;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: total,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(1.5),
            child: Container(color: color),
          );
        });
  }
}
