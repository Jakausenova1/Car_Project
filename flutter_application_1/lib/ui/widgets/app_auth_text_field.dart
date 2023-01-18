import 'package:flutter/material.dart';

import '../../consts/app_colors.dart';
import '../../consts/app_fonts.dart';

class AppAuthTextField extends StatelessWidget {
  const AppAuthTextField({
    Key? key,
    required this.text,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.suffix,
    this.errorText,
    required this.onChanged,
  }) : super(key: key);

  final String text;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? suffix;
  final String? errorText;
  final Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppFonts.w400s16.copyWith(
            color: AppColors.darkBlue,
          ),
        ),
        TextField(
          onChanged: onChanged,
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
              errorText: errorText,
              suffix: suffix,
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey),
              ),
              hintText: hintText,
              hintStyle: AppFonts.w400s16),
        ),
      ],
    );
  }
}
