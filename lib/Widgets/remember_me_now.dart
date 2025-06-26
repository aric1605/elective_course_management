import 'package:flutter/material.dart';

class RememberMeNow extends StatefulWidget {
  const RememberMeNow({super.key});

  @override
  State<RememberMeNow> createState() => _RememberMeNowState();
}

class _RememberMeNowState extends State<RememberMeNow> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          tristate: true,
          onChanged: (newBool) {
            setState(() {
              isChecked = newBool;
            });
          },
        ),
        Text(
          "Remember Me",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        Spacer(),
        Text(
          "Forget Password?",
          style: TextStyle(
            fontSize: 15,
            color: Colors.red,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
