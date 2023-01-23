import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/slider_item_model.dart';

import '../consts/app_colors.dart';

class CarModels {
  final String image;
  final int price;
  final String title;
  Color bgColor;
  final List<SliderItemModel> sliders;
  final String salesname;

  CarModels( 
      {required this.image,
      required this.sliders, 
      this.salesname = 'Lorem Ipsum',
      required this.price,
      required this.title,
      this.bgColor = AppColors.lightGrey});
}
