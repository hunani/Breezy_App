import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/app_color.dart';
import '../../../const/app_icon.dart';

class HowToPopScanScreen extends StatelessWidget {
  static const String routeName = '/howToPopScanScreen';
  const HowToPopScanScreen({Key? key}) : super(key: key);

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
                    Text("How To Pop or Scan",
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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffE0E2EF),
                border: Border.all(color: AppColor.kAppColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 15, left: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Pop With QR Code",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            )),
                        SizedBox(height: 5),
                        Text("All Phones",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            )),
                      ],
                    ),
                    Spacer(),
                    Image.asset(AppAssets.payImage, height: 110),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffE0E2EF),
                border: Border.all(color: AppColor.kAppColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 15, left: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Pop to New iPhones",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            )),
                        SizedBox(height: 5),
                        Text("iPhones XR, XS, 11, 12, 13",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            )),
                      ],
                    ),
                    Spacer(),
                    Image.asset(AppAssets.iphoneImage, height: 100),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffE0E2EF),
                border: Border.all(color: AppColor.kAppColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 15, left: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Pop to Androids",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            )),
                        SizedBox(height: 5),
                        Text("Must Have NFC on",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            )),
                      ],
                    ),
                    Spacer(),
                    Image.asset(AppAssets.androidsImage, height: 100),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
