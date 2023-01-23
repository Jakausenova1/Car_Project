import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/app_colors.dart';
import 'package:flutter_application_1/consts/app_fonts.dart';
import 'package:flutter_application_1/consts/app_images.dart';
import 'package:flutter_application_1/ui/pages/home_page.dart';
import 'package:flutter_application_1/ui/pages/login_page.dart';
import 'package:flutter_application_1/ui/widgets/app_auth_text_field.dart';
import 'package:flutter_application_1/ui/widgets/app_border_button.dart';
import 'package:flutter_application_1/ui/widgets/app_elevated_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String? nameError;
  String? emailError;
  String? passwordError;
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.only(top: 116, left: 38, right: 38, bottom: 80),
        child: SizedBox(
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Sign Up',
              style: AppFonts.w400s48.copyWith(color: AppColors.black),
            ),
            const SizedBox(
              height: 80,
            ),
            AppAuthTextField(
              text: 'FULL NAME',
              hintText: 'Lorem Ipsum',
              controller: nameController,
              onChanged: (val) {},
              errorText: nameError,
            ),
            const SizedBox(
              height: 30,
            ),
            AppAuthTextField(
              text: 'EMAIL OR PHONE',
              hintText: 'Loremipsum@gmail.com',
              controller: emailController,
              onChanged: (val) {
                if (val.isNotEmpty && !val.contains('@')) {
                  emailError = 'Не правильный эл.почта';
                } else {
                  emailError = null;
                }
                setState(() {});
              },
              errorText: emailError,
            ),
            const SizedBox(
              height: 30,
            ),
            AppAuthTextField(
              text: 'PASSWORD',
              hintText: 'Loremipsum@gmail.com',
              controller: passwordController,
              onChanged: (val) {
                if (val.isNotEmpty && val.length < 6) {
                  passwordError = "Пароль должен быть не менее 6 символов!";
                } else {
                  passwordError = null;
                }
                setState(() {});
              },
              errorText: passwordError,
              obscureText: obscureText,
              suffix: IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.black,
                ),
                onPressed: () {
                  obscureText = !obscureText;
                  setState(() {});
                },
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot password?',
                  style: AppFonts.w400s11.copyWith(color: AppColors.black),
                )),
            const SizedBox(
              height: 30,
            ),
            AppElevatedButton(
                title: 'Log In',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const HomePage())));
                }),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 9),
                alignment: Alignment.center,
                child: Text(
                  'OR',
                  style: AppFonts.w300s16.copyWith(color: AppColors.black),
                )),
            AppBorderButton(
                image: AppImages.google,
                title: 'Continue With Google',
                onPressed: () {}),
            const SizedBox(
              height: 13,
            ),
            AppBorderButton(
                image: AppImages.fb,
                title: 'Continue With Facebook',
                onPressed: () {}),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Text(
                  'Have an account Already?',
                  style: AppFonts.w300s15.copyWith(color: AppColors.black),
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: Text(
                      'SIGN IN',
                      style: AppFonts.w700s13.copyWith(
                          color: AppColors.yellow, fontStyle: FontStyle.italic),
                    )),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
