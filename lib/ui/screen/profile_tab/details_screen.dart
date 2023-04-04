import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popol_app/const/app_color.dart';
import 'package:popol_app/const/app_icon.dart';
import 'package:popol_app/ui/screen/profile_tab/premium_screen.dart';

class DetailsScreen extends StatelessWidget {
  static const String routeName = '/detailsScreen';
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              height: 50,
              color: AppColor.kAppColor,
              child: Center(
                child: Text(
                  "Choose a card to share",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Container(
                    width: 150,
                    height: 180,
                    decoration: BoxDecoration(
                      color: AppColor.kAppColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          SizedBox(height: 25),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Image.asset(
                                AppAssets.dashboad1Image,
                                color: AppColor.kAppColor,
                                height: 30,
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            "XYZ",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Basic Card",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(PremiumScreen.routeName);
                    },
                    child: Container(
                      width: 150,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 15),
                          Center(
                            child: Image.asset(
                              AppAssets.tajImage,
                              height: 55,
                            ),
                          ),
                          //SizedBox(height: 15),
                          Text(
                            "Create Business Card",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Upgrade to create multiple business cards",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Managing a team? Check out ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: Colors.black38)),
                SizedBox(width: 10),
                Text("Popl Teams",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w800,
                        fontSize: 17,
                        color: Colors.black)),
              ],
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Get.toNamed(PremiumScreen.routeName);
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.kAppColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Text("Create Another Card",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.white)),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3), blurRadius: 4)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Text("Cancel",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
