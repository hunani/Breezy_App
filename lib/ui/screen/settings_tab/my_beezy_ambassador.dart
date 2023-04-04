import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/app_color.dart';
import '../../../const/app_icon.dart';
import 'my_beezy_join_account.dart';

class MyBeezyAmbassador extends StatelessWidget {
  static const String routeName = '/myBeezyAmbassador';
  const MyBeezyAmbassador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                  "Connect your ambassador account to popl. This will add your ambassador link to the top of your profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  )),
            ),
            SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              height: 40,
              child: TextField(
                style: TextStyle(color: Colors.black, fontSize: 16),
                decoration: InputDecoration(
                  hintText: "Ambassador link ot code",
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
            ),
            SizedBox(height: 40),
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
                  child: Text("Connect Account",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 21,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: AppColor.kAppColor),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                child: Text("Apply Now",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 21,
                      color: AppColor.kAppColor,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
