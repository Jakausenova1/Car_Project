import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/car_models.dart';

import '../../consts/app_colors.dart';
import '../../consts/app_fonts.dart';

class CarCard extends StatelessWidget {
  const CarCard({
    Key? key,
    required this.onTap,
    required this.model,
    this.onPressedLike,
    this.onPressedRemoveInLike,
    this.isLike = true,
  }) : super(key: key);

  final CarModels model;
  final Function() onTap;
  final Function()? onPressedLike;
  final Function()? onPressedRemoveInLike;
  final bool isLike;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: model.bgColor,
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                offset: const Offset(0,4),
                color: AppColors.black.withOpacity(0.25))
          ],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Hero(
            tag: model.image,
            child: Image.asset(
              model.image,
            ),
          ),
          Text(
            model.title,
            style: AppFonts.w400s11.copyWith(color: AppColors.darkBlue),
          ),
          Text(
            "\$${model.price}/day",
            style: AppFonts.w400s11.copyWith(color: AppColors.black),
          ),
          Row(
            children: [
              const Spacer(),
              Material(
                color: Colors.transparent,
                shape: const CircleBorder(),
                clipBehavior: Clip.hardEdge,
                child: IconButton(
                  splashRadius: 25,
                  splashColor: AppColors.red.withOpacity(0.7),
                  padding: const EdgeInsets.all(2),
                  constraints: const BoxConstraints(),
                  onPressed: isLike ? onPressedLike : onPressedRemoveInLike,
                  icon: Icon(
                    isLike ? Icons.favorite : Icons.delete,
                    color: AppColors.red,
                  ),
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              const Icon(
                Icons.arrow_circle_right_rounded,
                color: AppColors.darkBlue,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          )
        ]),
      ),
    );
  }
}
