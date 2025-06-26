import 'package:elective_course_management/Constants/profile_options.dart';
import 'package:elective_course_management/Widgets/profile_buttons.dart';
import 'package:elective_course_management/Widgets/profile_name.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text("Profile"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
          child: Column(
            children: [
              ProfileName(),
              SizedBox(height: 35),
              for (int i = 0; i < profileOptionsList.length; i++)
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: ProfileButtons(
                    profileOptionsVar: profileOptionsList[i],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
