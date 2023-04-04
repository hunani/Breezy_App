import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:popol_app/ui/screen/signup/verification_done.dart';
import '../../../const/app_color.dart';
import '../../../const/dispose_keyboard.dart';

class SignUpOtpVerificationScreen extends StatefulWidget {
  static const String routeName = '/signUpOtpVerificationScreen';
  const SignUpOtpVerificationScreen({Key? key}) : super(key: key);

  @override
  State<SignUpOtpVerificationScreen> createState() =>
      _SignUpOtpVerificationScreenState();
}

class _SignUpOtpVerificationScreenState
    extends State<SignUpOtpVerificationScreen> {
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
                          "Enter Verification Code",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 28),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
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
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                height: 55,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Icon(Icons.arrow_back_ios_new_sharp,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed(VerificationDone.routeName);
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 15, left: 8),
                                  height: 55,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: AppColor.kAppColor,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Center(
                                    child: Text("NEXT",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22,
                                            color: Colors.white)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
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
