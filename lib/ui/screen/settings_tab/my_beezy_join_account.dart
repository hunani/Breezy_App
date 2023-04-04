import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popol_app/const/dispose_keyboard.dart';
import '../../../const/app_color.dart';
import '../../../const/app_icon.dart';

class MyBeezyJoinAccount extends StatefulWidget {
  static const String routeName = '/myBeezyJoinAccount';
  const MyBeezyJoinAccount({Key? key}) : super(key: key);

  @override
  State<MyBeezyJoinAccount> createState() => _MyBeezyJoinAccountState();
}

class _MyBeezyJoinAccountState extends State<MyBeezyJoinAccount> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController chooseController = TextEditingController();
  TextEditingController instagramController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController zipController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController paypalController = TextEditingController();
  TextEditingController whyController = TextEditingController();
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
                      Text("My Beezy Ambassador",
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
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Center(
                          child: Text("Join The Team",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                              )),
                        ),
                        SizedBox(height: 20),
                        textField("textEmail", emailController),
                        SizedBox(height: 15),
                        textField("Password", passwordController),
                        SizedBox(height: 15),
                        textField("Name", nameController),
                        SizedBox(height: 20),
                        Text("Profile Photo",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            )),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                                child:
                                    textField("Choose File", chooseController)),
                            SizedBox(width: 15),
                            Text("No file chosen",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                )),
                            SizedBox(width: 100),
                          ],
                        ),
                        SizedBox(height: 15),
                        textField("Instagram", instagramController),
                        SizedBox(height: 15),
                        textField("Phone Number", phoneController),
                        SizedBox(height: 15),
                        textField("Address", addressController),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(child: textField("City", cityController)),
                            SizedBox(width: 20),
                            Expanded(
                                child: textField("State", stateController)),
                            SizedBox(width: 20),
                            Expanded(
                                child: textField("Zip Code", zipController)),
                          ],
                        ),
                        SizedBox(height: 15),
                        textField("Country", countryController),
                        SizedBox(height: 15),
                        textField("Paypal email address", paypalController),
                        SizedBox(height: 15),
                        textField(
                            "Why you want to join the team", whyController),
                        SizedBox(height: 25),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(MyBeezyJoinAccount.routeName);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColor.kAppColor,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Center(
                              child: Text("Submit Application",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 21,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textField(String text, TextEditingController textEditingController) {
    return Container(
      height: 40,
      child: TextField(
        controller: textEditingController,
        style: TextStyle(color: Colors.black, fontSize: 16),
        decoration: InputDecoration(
          hintText: text,
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: AppColor.kAppColor)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: AppColor.kAppColor)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: AppColor.kAppColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: AppColor.kAppColor)),
          fillColor: AppColor.kBackgroundColor,
          contentPadding: EdgeInsets.only(bottom: 5, left: 20),
          filled: true,
        ),
      ),
    );
  }
}
