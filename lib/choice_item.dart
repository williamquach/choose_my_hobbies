import 'package:flutter/material.dart';

class ChoiceItem extends StatelessWidget {
  final String label;

  const ChoiceItem({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
    );
  }
}
