import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popol_app/const/dispose_keyboard.dart';
import '../../../const/app_color.dart';
import '../../../const/app_icon.dart';

class EditAccountEmailScreen extends StatelessWidget {
  static const String routeName = '/editAccountEmailScreen';
  const EditAccountEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        disposeKeyboard();
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 55,
                width: double.infinity,
                color: AppColor.kAppColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Image.asset(
                            AppAssets.removeImage,
                            height: 20,
                            color: Colors.white,
                          )),
                      Text("Edit Your Account Email",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: Colors.white,
                          )),
                      Image.asset(AppAssets.removeImage,
                          height: 10, color: AppColor.kAppColor),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                    "This email is used to log into your account. This is not a link on your profile",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    )),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: AppColor.kBackgroundColor,
                        border: Border.all(color: AppColor.kAppColor),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text("Link",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: AppColor.kAppColor,
                            )),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(":",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                          color: AppColor.kAppColor,
                        )),
                    SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        height: 40,
                        child: TextField(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          decoration: InputDecoration(
                            hintText: "xyz@gmail.com",
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: AppColor.kAppColor)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: AppColor.kAppColor)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: AppColor.kAppColor)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: AppColor.kAppColor)),
                            fillColor: AppColor.kBackgroundColor,
                            contentPadding:
                                EdgeInsets.only(bottom: 5, left: 20),
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.kAppColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Text("Save",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 21,
                        color: Colors.white,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
