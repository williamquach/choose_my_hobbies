import 'package:flutter/material.dart';

class ChoiceItem extends StatefulWidget {
  final String label;
  final bool isClickable;
  final Function(String chip)? addToHobbies;
  final Function(String chip)? removeFromHobbies;

  const ChoiceItem({
    Key? key,
    required this.label,
    required this.isClickable,
    this.addToHobbies,
    this.removeFromHobbies,
  }) : super(key: key);

  @override
  State<ChoiceItem> createState() => _ChoiceItemState();
}

class _ChoiceItemState extends State<ChoiceItem> {
  final Color selectedTextColor = Colors.white;
  final Color selectedBackgroundColor = const Color.fromRGBO(35, 93, 113, 1);
  final Color unselectedTextColor = Colors.black;
  final Color unselectedBackgroundColor =
      const Color.fromRGBO(245, 245, 245, 1);

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    Color textColor = isSelected ? selectedTextColor : unselectedTextColor;
    Color backgroundColor = isSelected == false
        ? unselectedBackgroundColor
        : selectedBackgroundColor; // Only for when not selected

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ChoiceChip(
        selected: isSelected,
        label: Text(
          widget.label,
          style: TextStyle(
            color: textColor,
          ),
        ),
        selectedColor: selectedBackgroundColor,
        disabledColor: Colors.grey,
        onSelected: (bool selected) {
          if (widget.isClickable == true) {
            isSelected = !isSelected;
            if (isSelected) {
              widget.addToHobbies!(widget.label);
            } else {
              widget.removeFromHobbies!(widget.label);
            }
          }
        },
        backgroundColor: backgroundColor,
      ),
    );
  }
}
