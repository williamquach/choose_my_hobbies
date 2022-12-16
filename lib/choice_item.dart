import 'package:flutter/material.dart';

class ChoiceItem extends StatefulWidget {
  final String label;
  final bool isClickable;

  const ChoiceItem({Key? key, required this.label, required this.isClickable}) : super(key: key);

  @override
  State<ChoiceItem> createState() => _ChoiceItemState();
}

class _ChoiceItemState extends State<ChoiceItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: () {
          if (widget.isClickable == true) {
            setState(() {
              isSelected = !isSelected;
            });
          }
        },
        child: Chip(
          label: Text(
            widget.label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
          backgroundColor: isSelected == true
              ? const Color.fromRGBO(35, 93, 113, 1)
              : Colors.transparent,
        ),
      ),
    );
  }
}
