import 'package:elective_course_management/Constants/colors.dart';
import 'package:elective_course_management/Widgets/dont_have_account.dart';
import 'package:elective_course_management/Widgets/email_widget.dart';
import 'package:elective_course_management/Widgets/password_widget.dart';
import 'package:elective_course_management/Widgets/remember_me_now.dart';
import 'package:elective_course_management/Widgets/text_field.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import '../Widgets/login_button.dart';

class Login extends StatefulWidget {
  Login({super.key});
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool? isChecked = false;
  final countryPicker = const FlCountryCodePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
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
                            "Hi, Wecome Back! 👋",
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Hello again, you’ve been missed!",
                            style: TextStyle(
                              fontFamily: 'Maprope',
                              fontSize: 14,
                              color: CustomColor.lghtGreyFont,
                            ),
                          ),
                          SizedBox(height: 40),

                          //Email Section
                          EmailWidget(),
                          CustomTextField(
                            hintText: "Email Address",
                            controller: widget._emailController,
                          ),
                          SizedBox(height: 15),

                          //Password Section
                          PasswordWidget(),
                          CustomTextField(
                            hintText: "Password",
                            controller: widget._passwordController,
                            toHide: true,
                          ),
                          SizedBox(height: 15),

                          //Remember Me Now Section
                          RememberMeNow(),
                          SizedBox(height: 40),

                          //Login Section
                          LoginButton(buttonText: "Login"),
                          SizedBox(height: 30),

                          //Don't Have Account Sectino
                          DontHaveAccount(
                            footerText: "Don't have an account?  ",
                            textButton: "Sign Up",
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
