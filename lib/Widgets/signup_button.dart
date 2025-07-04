import 'package:flutter/material.dart';

import '../Constants/colors.dart';
import '../Controller/Auth_controller.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({
    super.key,
    required this.buttonText,
    required this.emailController,
    required this.passwordController,
    required this.nameController,
    required this.rollController,
  });
  final String buttonText;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;
  final TextEditingController rollController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: double.infinity,
        height: 45,
        child: ElevatedButton(
          onPressed: () {
            AuthController.instance.signUp(
              nameController.text,
              emailController.text,
              passwordController.text,
              rollController.text,
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
