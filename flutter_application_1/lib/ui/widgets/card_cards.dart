import 'package:flutter/material.dart';

import '../../consts/app_colors.dart';
import '../../consts/app_fonts.dart';

class CarCard extends StatelessWidget {
  const CarCard({
    Key? key,
    required this.image,
    required this.price,
    required this.title,
    this.bgColor = AppColors.lightGrey, required this.onTap,
  }) : super(key: key);

  final String image;
  final int price;
  final String title;
  final Color bgColor;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: bgColor,
            boxShadow: [
              BoxShadow(
                  spreadRadius: 4,
                  blurRadius: 4,
                  color: AppColors.black.withOpacity(0.25))
            ],
            borderRadius: BorderRadius.circular(5),
          ),
          height: 169,
          width: 152,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(children: [
              Image.asset(image),
              Text(
                title,
                style: AppFonts.w400s11.copyWith(color: AppColors.darkBlue),
              ),
              Text(
                "\$$price/day",
                style: AppFonts.w400s11.copyWith(color: AppColors.black),
              ),
              Row(
                children: const [
                  Spacer(),
                  Icon(
                    Icons.favorite,
                    color: AppColors.red,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Icon(
                    Icons.arrow_circle_right_rounded,
                    color: AppColors.darkBlue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
