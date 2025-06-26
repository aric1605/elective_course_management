import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class EmailWidget extends StatelessWidget {
  const EmailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Email Address",
      style: TextStyle(
        fontFamily: 'Manrope',
        color: CustomColor.registerButtonBackground,
      ),
    );
  }
}
