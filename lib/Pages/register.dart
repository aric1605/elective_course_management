import 'package:elective_course_management/Constants/colors.dart';
import 'package:elective_course_management/Controller/Auth_controller.dart';
import 'package:elective_course_management/Widgets/already_have_account.dart';
import 'package:elective_course_management/Widgets/email_widget.dart';
import 'package:elective_course_management/Widgets/name_text_widget.dart';
import 'package:elective_course_management/Widgets/password_widget.dart';
import 'package:elective_course_management/Widgets/phone_widget.dart';
import 'package:elective_course_management/Widgets/remember_me_now.dart';
import 'package:elective_course_management/Widgets/signup_button.dart';
import 'package:elective_course_management/Widgets/text_field.dart';

import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({super.key});
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _rollController = new TextEditingController();
  TextEditingController _nameController = new TextEditingController();

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus(); // Dismiss keyboard on outside tap
        },
        child: Container(
          color: Colors.white,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          //Heading
                          Text(
                            "Create an account",
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          Text(
                            "Connect with your friends today!",
                            style: TextStyle(
                              fontFamily: 'Maprope',
                              fontSize: 14,
                              color: CustomColor.lghtGreyFont,
                            ),
                          ),
                          SizedBox(height: 40),

                          //Name Section
                          NameWidget(),
                          CustomTextField(
                            hintText: "Name",
                            controller: widget._nameController,
                          ),
                          SizedBox(height: 15),

                          //Email Section
                          EmailWidget(),
                          CustomTextField(
                            hintText: "Email Address",
                            controller: widget._emailController,
                          ),
                          SizedBox(height: 15),

                          //Roll Number Section
                          PhoneWidget(),
                          SizedBox(height: 8),
                          CustomTextField(
                            hintText: "Roll Number",
                            controller: widget._rollController,
                          ),
                          SizedBox(height: 15),

                          //Password Section
                          PasswordWidget(),
                          CustomTextField(
                            hintText: "Password",
                            toHide: true,
                            controller: widget._passwordController,
                          ),
                          SizedBox(height: 15),

                          //Remember Me Now Section
                          RememberMeNow(),
                          SizedBox(height: 40),

                          //Sign Up Section
                          SignupButton(
                            buttonText: "SignUp",
                            emailController: widget._emailController,
                            passwordController: widget._passwordController,
                            nameController: widget._nameController,
                            rollController: widget._rollController,
                          ),

                          SizedBox(height: 30),

                          //Already Have Account Sectino
                          AlreadyHaveAccount(
                            footerText: "Already have an account?  ",
                            textButton: "Login",
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
