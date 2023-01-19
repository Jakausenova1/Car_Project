import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/consts/app_images.dart';

import '../../consts/app_colors.dart';
import '../../consts/app_fonts.dart';
import '../../models/car_models.dart';
import '../widgets/card_cards.dart';
import '../widgets/custom_chip.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

double spreadRadius = 2;
double blurRadius = 3;
List<String> labels = ["Family cars", "Cheap cars", "Luxury cars"];
int currentLabel = 0;

List<CarModels> data = [
  CarModels(image: AppImages.camry, price: 500, title: "Camry"),
  CarModels(image: AppImages.audi, price: 180, title: "AUDI Red A6"),
  CarModels(image: AppImages.range, price: 150, title: "RANGE ROVER"),
  CarModels(image: AppImages.lamb, price: 550, title: "LAMBORGHINI"),
  CarModels(image: AppImages.tesla, price: 150, title: "TESLA"),
  CarModels(image: AppImages.whiteRange, price: 200, title: "RANGE ROVER"),
  CarModels(image: AppImages.black, price: 100, title: "TOYOTA"),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        drawer: const Drawer(),
        appBar: AppBar(
          leading: Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Image.asset(
                AppImages.vector,
                width: 27,
                height: 17,
              ),
            );
          }),
          backgroundColor: AppColors.white,
          elevation: 0,
          actions: const [
            Icon(
              Icons.shopping_cart_checkout_outlined,
              color: AppColors.darkBlue,
              size: 30,
            ),
            SizedBox(
              width: 44,
            )
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTapDown: (_) {
                    spreadRadius = 0;
                    blurRadius = 0;
                    setState(() {});
                  },
                  onTapUp: (_) {
                    spreadRadius = 2;
                    blurRadius = 3;
                    setState(() {});
                  },
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        content: IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    );
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 100),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: spreadRadius,
                            blurRadius: blurRadius,
                            color: AppColors.black.withOpacity(0.6),
                          )
                        ]),
                    child: Image.asset(AppImages.banner),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomChip(
                      label: labels[0],
                      selected: currentLabel == 0,
                      onSelected: (isSelected) {
                        currentLabel = 0;
                        setState(() {});
                      },
                    ),
                    CustomChip(
                      label: labels[1],
                      selected: currentLabel == 1,
                      onSelected: (isSelected) {
                        currentLabel = 1;
                        setState(() {});
                      },
                    ),
                    CustomChip(
                      label: labels[2],
                      selected: currentLabel == 2,
                      onSelected: (isSelected) {
                        currentLabel = 2;
                        setState(() {});
                      },
                    ),
                    const Icon(Icons.search),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Text(
                  "Cars Available Near You",
                  style: AppFonts.w400s20.copyWith(color: AppColors.black),
                ),
                Row(
                  children: [
                    const Spacer(),
                    Text(
                      "View more",
                      style: AppFonts.w400s12.copyWith(color: AppColors.red),
                    ),
                  ],
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: data.length,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return CarCard(
                          image: data[index].image,
                          price: data[index].price,
                          title: data[index].title);
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
