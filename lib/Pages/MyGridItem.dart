import 'package:flutter/material.dart';

class MyGridItem extends StatelessWidget {
  final String title;

  MyGridItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.all(25.0),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20.0,
            height: 17.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
