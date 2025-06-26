import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: CustomColor.profileBackgroung,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(child: Text("A", style: TextStyle(fontSize: 25))),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Aric Vasaya", style: TextStyle(fontSize: 20)),
            Text("aricvasaya10@gmail.com", style: TextStyle(fontSize: 14)),
          ],
        ),
      ],
    );
  }
}
