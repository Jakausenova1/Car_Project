import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/consts/app_colors.dart';
import 'package:flutter_application_1/consts/app_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 116, horizontal: 38),
        width: double.infinity,
        child: Column(children: [
          Text('Sign In', style: AppFonts.w400s48.copyWith(color: AppColors.black),)
        ]),
      ),
    );
  }
}