import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../const/app_color.dart';
import '../../../const/app_icon.dart';
import 'how_to_popscan.dart';

class ActivateAMyBeezyScreen extends StatelessWidget {
  static const String routeName = '/activateAMyBeezyScreen';
  const ActivateAMyBeezyScreen({Key? key}) : super(key: key);

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
                    Text("Activate a My Beezy Device",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.white,
                        )),
                    Image.asset(AppAssets.removeImage,
                        height: 10, color: AppColor.kAppColor),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            AlignedGridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 20,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffE0E2EF),
                      border: Border.all(color: AppColor.kAppColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppAssets.cardImage,
                          height: 90,
                        ),
                        Text("Card",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            )),
                        SizedBox(height: 15),
                      ],
                    ),
                  );
                }),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                //Get.toNamed(HowToPopScanScreen.routeName);
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
                  child: Text("Get a Device Now",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 21,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
