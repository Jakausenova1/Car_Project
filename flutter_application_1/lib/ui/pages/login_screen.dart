import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/app_colors.dart';
import 'package:flutter_application_1/consts/app_fonts.dart';

import '../widgets/app_auth_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        AppAuthTextField(
          text: 'EMAIL OR PHONE',
          hintText: "Loremipsum@gmail.com",
          controller: controllerEmail,
          onChanged: (String) {},
        )
      ]),
    );
  }
}
