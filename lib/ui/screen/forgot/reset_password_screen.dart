import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:popol_app/ui/screen/forgot/forgot_done.dart';

import '../../../const/app_color.dart';
import '../../../const/app_icon.dart';
import '../../../const/dispose_keyboard.dart';
import '../../../widget/common_text_field.dart';

class ResetPasswordScreen extends StatefulWidget {
  static const String routeName = '/resetPasswordScreen';
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
                          "Reset Password",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 28),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Lorem ipsum dolor sit amet, ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        SizedBox(height: 50),
                        Image.asset(AppAssets.nameImage, height: 40),
                        SizedBox(height: 50),
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
                          textFieldType: TextFieldType.enterPassword,
                          textEditingController: confirmPasswordController,
                        ),
                        SizedBox(height: 60),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(ForgotDode.routeName);
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
                              child: Text("Update",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                      color: Colors.white)),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
