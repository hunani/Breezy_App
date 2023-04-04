import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../const/app_color.dart';
import '../../../../const/app_icon.dart';
import 'contact_details_screen.dart';

class PreviewCartScreen extends StatelessWidget {
  static const String routeName = '/previewCartScreen';
  const PreviewCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 150),
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          SizedBox(height: 120),
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
                                child: Text("Save Contact",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                          Container(
                            height: 140,
                            width: 120,
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
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.blue.shade100,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        AppAssets.emailBox,
                                        height: 50,
                                      ),
                                    )),
                                SizedBox(height: 10),
                                Text(
                                  "Email",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                          SizedBox(height: 40),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(ContactDetailsScreen.routeName);
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColor.kAppColor),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Center(
                                child: Text("Create Own Card",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                        color: AppColor.kAppColor)),
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
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColor.kAppColor),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Center(
                                child: Text("Cancel",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20)),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: -70,
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: AppColor.kAppColor,
                        shape: BoxShape.circle,
                      ),
                      child:
                          Center(child: Image.asset(AppAssets.dashboad1Image)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   height: 180,
      //   width: double.infinity,
      //   color: Colors.white,
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 15),
      //     child: Column(
      //       children: [
      //         SizedBox(height: 20),
      //         GestureDetector(
      //           onTap: () {
      //             Get.toNamed(PreviewCartScreen.routeName);
      //           },
      //           child: Container(
      //             height: 55,
      //             width: double.infinity,
      //             decoration: BoxDecoration(
      //               boxShadow: [
      //                 BoxShadow(
      //                     color: Colors.black.withOpacity(0.4), blurRadius: 4)
      //               ],
      //               color: Colors.white,
      //               borderRadius: BorderRadius.circular(40),
      //             ),
      //             child: Center(
      //               child: Text("Preview Card",
      //                   style: TextStyle(
      //                     fontWeight: FontWeight.w600,
      //                     fontSize: 20,
      //                   )),
      //             ),
      //           ),
      //         ),
      //         SizedBox(height: 20),
      //         GestureDetector(
      //           onTap: () {
      //             Get.back();
      //           },
      //           child: Container(
      //             height: 55,
      //             width: double.infinity,
      //             decoration: BoxDecoration(
      //               color: Colors.black,
      //               borderRadius: BorderRadius.circular(40),
      //             ),
      //             child: Center(
      //               child: Text("Save Card",
      //                   style: TextStyle(
      //                       fontWeight: FontWeight.w600,
      //                       fontSize: 18,
      //                       color: Colors.white)),
      //             ),
      //           ),
      //         ),
      //         SizedBox(height: 30),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
