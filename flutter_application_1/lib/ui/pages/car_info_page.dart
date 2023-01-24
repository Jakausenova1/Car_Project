import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/app_colors.dart';
import 'package:flutter_application_1/consts/app_fonts.dart';
import 'package:flutter_application_1/consts/app_images.dart';
import 'package:flutter_application_1/models/car_models.dart';
import 'package:flutter_application_1/ui/widgets/app_slider_widget.dart';
import 'package:flutter_application_1/ui/widgets/car_app_bar.dart';

class CarInfoPage extends StatefulWidget {
  const CarInfoPage({super.key, required this.model});
  final CarModels model;

  @override
  State<CarInfoPage> createState() => _CarInfoPageState();
}

class _CarInfoPageState extends State<CarInfoPage> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: CustomScrollView(
        slivers: [
          CarAppBar(
            iamge: widget.model.image,
            onBackPressed: () {
              Navigator.pop(context);
            },
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 25, right: 44, top: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.model.title,
                        style:
                            AppFonts.w400s16.copyWith(color: AppColors.black),
                      ),
                      Text(
                        '\$${widget.model.price}',
                        style: AppFonts.w700s12.copyWith(color: AppColors.red),
                      )
                    ],
                  ),
                ),
                AppSliderWidget(list: widget.model.sliders),
                Padding(
                  padding: const EdgeInsets.only(left: 21, top: 15, bottom: 18),
                  child: Text(
                    "RENDER",
                    style: AppFonts.w400s16.copyWith(color: AppColors.darkBlue),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      width: 21,
                    ),
                    CircleAvatar(
                      radius: 25,
                      child: Image.asset(
                        AppImages.salesname,
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      widget.model.salesname,
                      style:
                          AppFonts.w400s13.copyWith(color: AppColors.darkBlue),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          AppImages.message,
                          width: 30,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          AppImages.call,
                          width: 30,
                        )),
                    const SizedBox(
                      width: 44,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(37.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            count += 1;
                            setState(() {});
                          },
                          icon: Container(
                            width: 43,
                            height: 43,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: AppColors.lightBlue),
                              borderRadius: BorderRadius.circular(1000),
                            ),
                            child: Text(
                              '+',
                              style: AppFonts.w700s20
                                  .copyWith(color: AppColors.lightBlue),
                            ),
                          )),
                      Text(
                        count.toString(),
                        style:
                            AppFonts.w700s20.copyWith(color: AppColors.black),
                      ),
                      IconButton(
                          onPressed: () {
                            if (count > 0) {
                              setState(() {
                                count -= 1;
                              });
                            }
                          },
                          icon: Container(
                            width: 43,
                            height: 43,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: AppColors.lightBlue),
                              borderRadius: BorderRadius.circular(1000),
                            ),
                            child: Text(
                              '-',
                              style: AppFonts.w700s20
                                  .copyWith(color: AppColors.lightBlue),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
