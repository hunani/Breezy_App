import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popol_app/ui/screen/login/login_Screen.dart';
import 'package:popol_app/ui/screen/signup/sign_up2_screen.dart';
import '../../../const/app_color.dart';
import '../../../const/app_icon.dart';
import '../../../const/dispose_keyboard.dart';
import '../../../widget/common_text_field.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/signUpScreen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController ganderController = TextEditingController();
  TextEditingController addressController = TextEditingController();
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
                          textFieldType: TextFieldType.email,
                          textEditingController: emailController,
                        ),
                        SizedBox(height: 15),
                        CustomTextField(
                          validator: (val) =>
                              val!.trim().isEmpty ? "field required" : null,
                          textFieldType: TextFieldType.enterPassword,
                          textEditingController: passwordController,
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextField(
                                validator: (val) => val!.trim().isEmpty
                                    ? "field required"
                                    : null,
                                textFieldType: TextFieldType.date,
                                textEditingController: dateController,
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: CustomTextField(
                                validator: (val) => val!.trim().isEmpty
                                    ? "field required"
                                    : null,
                                textFieldType: TextFieldType.gander,
                                textEditingController: ganderController,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        CustomTextField(
                          validator: (val) =>
                              val!.trim().isEmpty ? "field required" : null,
                          textFieldType: TextFieldType.address,
                          textEditingController: addressController,
                        ),
                        SizedBox(height: 50),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(SignUp2Screen.routeName);
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
                  child: Text("Do you have Account Already? Sign In here",
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
