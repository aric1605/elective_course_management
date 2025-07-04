import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Name",
      style: TextStyle(
        fontFamily: 'Manrope',
        color: CustomColor.registerButtonBackground,
      ),
    );
  }
}
