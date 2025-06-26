import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({
    super.key,
    required this.footerText,
    required this.textButton,
  });
  final String footerText;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(footerText, style: TextStyle(fontFamily: 'Manrope', fontSize: 15)),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, '/register');
          },
          child: Text(
            textButton,
            style: TextStyle(
              color: CustomColor.registerButtonBackground,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
