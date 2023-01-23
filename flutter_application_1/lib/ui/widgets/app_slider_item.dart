import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/consts/app_colors.dart';
import 'package:flutter_application_1/consts/app_fonts.dart';

class AppSliderItem extends StatelessWidget {
  const AppSliderItem({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 89,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: AppColors.lightGrey, borderRadius: BorderRadius.circular(3), boxShadow: [BoxShadow(color: AppColors.black.withOpacity(0.25), offset: const Offset(0,4),blurRadius: 4)]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title,style: AppFonts.w700s12.copyWith(color: AppColors.lightBlue),)
          ,const SizedBox(height: 7,),
          Text(subTitle, style: AppFonts.w400s12.copyWith(color: AppColors.black),)
        ],
      ),
    );
  }
}