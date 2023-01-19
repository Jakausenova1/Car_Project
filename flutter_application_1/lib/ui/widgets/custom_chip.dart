import 'package:flutter/material.dart';
import '../../consts/app_colors.dart';
import '../../consts/app_fonts.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    Key? key,
    required this.label,
    required this.selected,
    required this.onSelected,
  }) : super(key: key);
  final String label;
  final bool selected;
  final Function(bool) onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      onSelected: onSelected,
      selectedColor: AppColors.darkBlue,
      backgroundColor: AppColors.white,
      label: Text(label),
      selected: selected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      side: const BorderSide(color: AppColors.darkBlue, width: 1),
      labelStyle: AppFonts.w700s12
          .copyWith(color: selected ? AppColors.white : AppColors.black),
    );
  }
}
