import 'package:flutter/material.dart';

import '../../consts/app_colors.dart';
import '../../consts/app_fonts.dart';
import '../../consts/app_images.dart';
import '../widgets/app_round_button.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                AppImages.bg,
              ),
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(AppImages.tura),
              const Spacer(),
              Text(
                "Rent your dream car from the \nBest Company",
                textAlign: TextAlign.center,
                style: AppFonts.w600s26
                    .copyWith(color: AppColors.white.withOpacity(0.8)),
              ),
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 243,
                height: 52,
                child: RoundedButton(
                  title: "Get Started >",
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        )
      ],
    ),
  );
}
