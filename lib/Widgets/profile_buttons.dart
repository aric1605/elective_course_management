import 'package:elective_course_management/Constants/profile_options.dart';
import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({
    super.key,
    required this.profileOptionsVar,
    required this.onTap,
  });
  final profileOptions profileOptionsVar;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            profileOptionsVar.icon,
            size: 30,
            color: CustomColor.registerButtonBackground,
          ),
          SizedBox(width: 20),
          Text(
            profileOptionsVar.title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
