import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class PhoneWidget extends StatelessWidget {
  const PhoneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Phone Number",
      style: TextStyle(
        fontFamily: 'Manrope',
        color: CustomColor.registerButtonBackground,
      ),
    );
  }
}
