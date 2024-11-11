import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/notes.png',
        width: 250,
        fit: BoxFit.contain,
      ),
    );
  }
}
