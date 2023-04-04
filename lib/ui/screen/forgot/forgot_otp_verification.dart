import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:popol_app/ui/screen/forgot/reset_password_screen.dart';
import 'package:popol_app/ui/screen/signup/verification_done.dart';
import '../../../const/app_color.dart';
import '../../../const/app_icon.dart';
import '../../../const/dispose_keyboard.dart';

class ForgotOtpVerificationScreen extends StatefulWidget {
  static const String routeName = '/forgotOtpVerificationScreen';
  const ForgotOtpVerificationScreen({Key? key}) : super(key: key);

  @override
  State<ForgotOtpVerificationScreen> createState() =>
      _ForgotOtpVerificationScreenState();
}

class _ForgotOtpVerificationScreenState
    extends State<ForgotOtpVerificationScreen> {
  TextEditingController otpController = TextEditingController();
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
                          "Enter 4 Digit Code",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 28),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Lorem ipsum dolor sit amet,",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        SizedBox(height: 40),
                        Image.asset(AppAssets.nameImage, height: 40),
                        SizedBox(height: 70),
                        PinCodeTextField(
                          cursorColor: Colors.black,
                          backgroundColor: Colors.transparent,
                          appContext: context,
                          length: 4,
                          animationType: AnimationType.fade,
                          blinkWhenObscuring: true,
                          pastedTextStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                          pinTheme: PinTheme(
                            activeColor: Color(0xffeff1f5),
                            inactiveColor: Colors.black45,
                            inactiveFillColor: Color(0xffeff1f5),
                            selectedFillColor: Color(0xffeff1f5),
                            activeFillColor: Color(0xffeff1f5),
                            disabledColor: Color(0xffeff1f5),
                            selectedColor: Colors.black45,
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(10),
                            fieldHeight: 60,
                            fieldOuterPadding:
                                const EdgeInsets.symmetric(horizontal: 5),
                            fieldWidth: 60,
                          ),
                          animationDuration: const Duration(milliseconds: 300),
                          controller: otpController,
                          onChanged: (otp) {},
                          keyboardType: TextInputType.number,
                          enableActiveFill: true,
                        ),
                        SizedBox(height: 70),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(ResetPasswordScreen.routeName);
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
                              child: Text("Continue",
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
