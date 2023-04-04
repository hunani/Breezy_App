import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popol_app/ui/screen/contacts_tab/widget/bottom_sheet.dart';
import '../../../const/app_color.dart';
import '../../../const/app_icon.dart';

class SendScreen extends StatefulWidget {
  static const String routeName = '/sendScreen';
  const SendScreen({Key? key}) : super(key: key);

  @override
  State<SendScreen> createState() => _SendScreenState();
}

class _SendScreenState extends State<SendScreen> {
  bool isSwitched = false;
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
                    Text("Sharing This Card",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          color: Colors.white,
                        )),
                    Image.asset(AppAssets.removeImage,
                        height: 10, color: AppColor.kAppColor),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              AppAssets.sharingCode,
              height: 230,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColor.kAppColor,
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                          child: Text(
                        "EDIT QR",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColor.kAppColor,
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                          child: Text(
                        "Share",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.kAppColor.withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      textDetails(AppAssets.copyImage, "Copy Card Link"),
                      SizedBox(height: 5),
                      Divider(thickness: 2, color: Colors.white),
                      SizedBox(height: 5),
                      GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    actions: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 10),
                                            Center(
                                              child: Text(
                                                "QR Code Saved!",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 22),
                                              ),
                                            ),
                                            SizedBox(height: 15),
                                            Center(
                                              child: Text(
                                                "Your my buzzy QR code has been saved to your camera roll",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 18),
                                              ),
                                            ),
                                            SizedBox(height: 20),
                                            GestureDetector(
                                              onTap: () {
                                                Get.back();
                                              },
                                              child: Center(
                                                child: Container(
                                                  height: 35,
                                                  width: 60,
                                                  decoration: BoxDecoration(
                                                      color: AppColor.kAppColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Center(
                                                      child: Text(
                                                    "ok",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white),
                                                  )),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: textDetails(
                              AppAssets.qrImage, "Save QR Code to Photos")),
                      SizedBox(height: 5),
                      Divider(thickness: 2, color: Colors.white),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 15),
                        child: Row(
                          children: [
                            Image.asset(AppAssets.withImage, height: 18),
                            SizedBox(width: 10),
                            Text(
                              "Share With No Internet",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: AppColor.kAppColor),
                            ),
                            Spacer(),
                            Transform.scale(
                              scale: 0.90,
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
                          ],
                        ),
                      ),
                      Divider(thickness: 2, color: Colors.white),
                      SizedBox(height: 5),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  actions: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 10),
                                          Center(
                                            child: Text(
                                              "Card Link Copied!",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 22),
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Center(
                                            child: Text(
                                              "Now you can paste your digital business card link whrever you'd like to share it",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 18),
                                            ),
                                          ),
                                          SizedBox(height: 20),
                                          GestureDetector(
                                            onTap: () {
                                              Get.back();
                                            },
                                            child: Center(
                                              child: Container(
                                                height: 35,
                                                width: 60,
                                                decoration: BoxDecoration(
                                                    color: AppColor.kAppColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Center(
                                                    child: Text(
                                                  "ok",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white),
                                                )),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Image.asset(AppAssets.viaEmail, height: 18),
                              SizedBox(width: 10),
                              Text(
                                "Share Card Via Email",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: AppColor.kAppColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //textDetails(AppAssets.viaEmail, "Copy Card Link"),
                      SizedBox(height: 5),
                      Divider(thickness: 2, color: Colors.white),
                      SizedBox(height: 5),
                      textDetails(AppAssets.shareText, "Share Card Via Text"),
                      SizedBox(height: 5),
                      Divider(thickness: 2, color: Colors.white),
                      SizedBox(height: 5),
                      GestureDetector(
                        onTap: () {
                          shareBottomSheet();
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Icon(Icons.more_horiz,
                                  size: 29, color: AppColor.kAppColor),
                              SizedBox(width: 10),
                              Text(
                                "Share Another Way",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: AppColor.kAppColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textDetails(String icon, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Image.asset(icon, height: 22),
          SizedBox(width: 10),
          Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: AppColor.kAppColor),
          ),
        ],
      ),
    );
  }
}
