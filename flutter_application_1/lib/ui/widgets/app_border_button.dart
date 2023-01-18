import 'package:flutter/material.dart';
import '../../consts/app_colors.dart';
import '../../consts/app_fonts.dart';

class AppBorderButton extends StatelessWidget {
  const AppBorderButton({
    Key? key,
    required this.image,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final String image;
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.white,
        side: const BorderSide(width: 2, color: AppColors.black),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 12),
        child: Row(
          children: [
            Image.asset(
              image,
              width: 30,
            ),
            const Spacer(),
            Text(
              title,
              style: AppFonts.w400s16.copyWith(color: AppColors.black),
            )
          ],
        ),
      ),
    );
  }
}
