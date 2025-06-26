import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class PasswordWidget extends StatelessWidget {
  const PasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Password",
      style: TextStyle(
        fontFamily: 'Manrope',
        color: CustomColor.registerButtonBackground,
      ),
    );
  }
}
