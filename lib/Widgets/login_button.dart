import 'package:elective_course_management/Controller/Auth_controller.dart';
import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.buttonText,
    required this.emailController,
    required this.passwordController,
  });
  final String buttonText;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: double.infinity,
        height: 45,
        child: ElevatedButton(
          onPressed: () {
            AuthController.instance.login(
              emailController.text,
              passwordController.text,
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: CustomColor.registerButtonBackground,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontFamily: 'Manrope',
            ),
          ),
        ),
      ),
    );
  }
}
