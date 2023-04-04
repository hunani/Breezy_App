import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popol_app/const/app_color.dart';
import 'package:popol_app/const/app_icon.dart';
import 'package:popol_app/const/dispose_keyboard.dart';
import 'package:popol_app/ui/screen/signup/signup_otpverification_screen.dart';
import '../../../widget/common_text_field.dart';
import '../login/login_Screen.dart';

class SignUp2Screen extends StatefulWidget {
  static const String routeName = '/signUp2Screen';
  const SignUp2Screen({Key? key}) : super(key: key);

  @override
  State<SignUp2Screen> createState() => _SignUp2ScreenState();
}

class _SignUp2ScreenState extends State<SignUp2Screen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        disposeKeyboard();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.kAppColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 50),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Column(
                      children: [
                        Text(
                          "Sign up",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 28),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Let’s login for explore continues",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        SizedBox(height: 20),
                        Image.asset(AppAssets.nameImage, height: 40),
                        SizedBox(height: 20),
                        CustomTextField(
                          validator: (val) =>
                              val!.trim().isEmpty ? "field required" : null,
                          textFieldType: TextFieldType.userName,
                          textEditingController: userNameController,
                        ),
                        SizedBox(height: 15),
                        CustomTextField(
                          validator: (val) =>
                              val!.trim().isEmpty ? "field required" : null,
                          textFieldType: TextFieldType.password,
                          textEditingController: passwordController,
                        ),
                        SizedBox(height: 15),
                        CustomTextField(
                          validator: (val) =>
                              val!.trim().isEmpty ? "field required" : null,
                          textFieldType: TextFieldType.password,
                          textEditingController: confirmPasswordController,
                        ),
                        SizedBox(height: 50),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(SignUpOtpVerificationScreen.routeName);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColor.kAppColor,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Center(
                              child: Text("Sign up",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                      color: Colors.white)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(LoginScreen.routeName);
                  },
                  child: Text("do you have Account  Already? Sign In  Heres",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: Colors.white)),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
