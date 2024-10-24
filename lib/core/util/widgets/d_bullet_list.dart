import 'package:flutter/material.dart';

class DBulletPointList extends StatelessWidget {
  final List<String> items;

  const DBulletPointList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((item) =>
        Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 4.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('• ', style: TextStyle(fontSize: 16)),
              Expanded(child: Text(item)),
            ],
          ),
        )
      ).toList(),
    );
  }
}