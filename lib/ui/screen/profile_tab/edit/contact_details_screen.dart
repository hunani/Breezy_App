import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popol_app/const/dispose_keyboard.dart';

import '../../../../const/app_color.dart';
import '../../../../const/app_icon.dart';

class ContactDetailsScreen extends StatefulWidget {
  static const String routeName = '/contactDetailsScreen';
  const ContactDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ContactDetailsScreen> createState() => _ContactDetailsScreenState();
}

class _ContactDetailsScreenState extends State<ContactDetailsScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        disposeKeyboard();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
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
                        child: Image.asset(AppAssets.removeImage,
                            height: 20, color: Colors.white),
                      ),
                      SizedBox(width: 5),
                      Text("Email",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white,
                          )),
                      Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text("Preview",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: AppColor.kAppColor,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Container(
                          height: 45,
                          padding: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            border: Border.all(color: AppColor.kAppColor),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Transform.scale(
                                scale: 0.60,
                                child: Switch(
                                  value: isSwitched,
                                  activeColor: Colors.white,
                                  activeTrackColor: AppColor.kAppColor,
                                  onChanged: (bool a) {
                                    isSwitched = a;
                                    setState(() {});
                                  },
                                ),
                              ),
                              Text("Highlight",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: AppColor.kAppColor,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 45,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            border: Border.all(color: AppColor.kAppColor),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.edit, size: 20),
                              SizedBox(width: 10),
                              Text("Customise icon",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: AppColor.kAppColor,
                                  )),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 38,
                          width: 38,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: AppColor.kAppColor,
                            border: Border.all(color: AppColor.kAppColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.delete,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                blurRadius: 4),
                          ],
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 15),
                            Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade100,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    AppAssets.emailBox,
                                    height: 80,
                                  ),
                                )),
                            SizedBox(height: 20),
                            Text(
                              "Email",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
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
                    SizedBox(height: 20),
                    Row(
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
                            child: Text("Title",
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                              decoration: InputDecoration(
                                hintText: "Mail",
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
                  ],
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.kAppColor,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text("Save Link",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
