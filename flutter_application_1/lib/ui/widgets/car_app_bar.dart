import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/app_colors.dart';
import 'package:flutter_application_1/consts/app_fonts.dart';

class CarAppBar extends StatelessWidget {
  const CarAppBar(
      {super.key,
      this.onBackPressed,
      this.onOptionPressed,
      required this.iamge,
      this.backgroundColor = AppColors.lightBlue});
  final Function()? onBackPressed;
  final Function()? onOptionPressed;
  final String iamge;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45))),
              leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.white,
          ),
          onPressed: onBackPressed,
        ),actions: [IconButton(
          icon: const Icon(
            Icons.more_vert,
            color: AppColors.white,
          ),
          onPressed: onOptionPressed,
        ),],
      pinned: true,
      backgroundColor: backgroundColor,
      expandedHeight: 400,
      flexibleSpace: Container(
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45))),
        width: double.infinity,
        child: FlexibleSpaceBar(
          background: Stack(
            children: [
              Positioned(
                  bottom: 120,
                  left: 22,
                  right: 22,
                  child: Center(
                      child: Text(
                    "TIIRA",
                    style: AppFonts.w400s130.copyWith(color: AppColors.white.withOpacity(0.5)),
                    textAlign: TextAlign.center,
                  ))),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Hero(
                    tag: iamge,
                    child: Image.asset(
                      iamge, fit: BoxFit.contain,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
