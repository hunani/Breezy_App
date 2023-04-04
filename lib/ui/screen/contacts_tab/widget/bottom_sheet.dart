import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popol_app/const/app_icon.dart';
import '../../../../const/app_color.dart';

void shareBottomSheet() async {
  Get.bottomSheet(
    const ShareBottomSheet(),
    backgroundColor: Color(0xffE0E2EF),
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(40),
        topLeft: Radius.circular(40),
      ),
    ),
  );
}

class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 30),
        Text(
          "http://mybuzzy.cp/hash/5fbALBPV/1/share",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 30,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: AppColor.kAppColor),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppAssets.copyImage, height: 13),
                  SizedBox(width: 5),
                  Text(
                    "Copy",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: AppColor.kAppColor),
                  ),
                ],
              ),
            ),
            SizedBox(width: 30),
            Container(
              height: 30,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: AppColor.kAppColor),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.share, color: AppColor.kAppColor, size: 13),
                  SizedBox(width: 5),
                  Text(
                    "Nearby",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: AppColor.kAppColor),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                4,
                (index) => Column(
                      children: [
                        Image.asset(AppAssets.userImage, height: 65),
                        SizedBox(height: 5),
                        Text(
                          "Purple haze",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: AppColor.kAppColor),
                        ),
                      ],
                    )),
          ),
        ),
        SizedBox(height: 20),
        Divider(thickness: 2.5, color: Colors.white),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(AppAssets.intagramImage, height: 55),
              Image.asset(AppAssets.facebook2Image, height: 55),
              Image.asset(AppAssets.linkdin2Image, height: 55),
              Image.asset(AppAssets.twitterImage, height: 55),
            ],
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
