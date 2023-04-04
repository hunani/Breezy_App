import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popol_app/const/app_color.dart';
import 'package:popol_app/const/app_icon.dart';

class PremiumScreen extends StatefulWidget {
  static const String routeName = '/premiumScreen';
  const PremiumScreen({Key? key}) : super(key: key);

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  List<String> list = ["Yearly (20% Off)", "Monthly"];
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppAssets.removeImage,
                      height: 20, color: Colors.transparent),
                  Text(
                    "UPGRADE NOW",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(AppAssets.removeImage, height: 20)),
                ],
              ),
              SizedBox(height: 30),
              Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: list
                        .asMap()
                        .map((index, value) => MapEntry(
                              index,
                              GestureDetector(
                                onTap: () {
                                  selectIndex = index;
                                  setState(() {});
                                },
                                child: Container(
                                  height: 55,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: selectIndex == index
                                        ? AppColor.kAppColor
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                        color: selectIndex == index
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ))
                        .values
                        .toList(),
                  )),
              Expanded(
                child: IndexedStack(
                  index: selectIndex,
                  children: [
                    PremiumSelect(),
                    PremiumSelect(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PremiumSelect extends StatelessWidget {
  const PremiumSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(left: 3, right: 3, top: 20),
        child: Column(
          children: [
            Column(
              children: List.generate(
                2,
                (index) => Container(
                  margin: EdgeInsets.only(bottom: 25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.4), blurRadius: 4),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(AppAssets.nameImage, height: 30),
                            Spacer(),
                            Container(
                                margin: EdgeInsets.only(top: 10),
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColor.kAppColor),
                                child: Center(
                                  child: Icon(
                                    Icons.done,
                                    size: 24,
                                    color: Colors.white,
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text("\$7.99 USD",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Colors.black38)),
                            SizedBox(width: 10),
                            Text("(Save \$20 / year)",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: AppColor.kAppColor)),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text("\$6.41 USD",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 21,
                                color: Colors.black)),
                        SizedBox(height: 10),
                        Text("Per month, billed yearly",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.black45)),
                        SizedBox(height: 20),
                        textDetails(AppAssets.upgrade1Image,
                            "Create Up to 3 Business Cards"),
                        SizedBox(height: 10),
                        textDetails(AppAssets.upgrade2Image,
                            "Capture Other's Info as Contacts"),
                        SizedBox(height: 10),
                        textDetails(
                            AppAssets.upgrade3Image, "Business Card Scanner"),
                        SizedBox(height: 10),
                        textDetails(AppAssets.upgrade4Image,
                            "Personal + Business Profiles"),
                        SizedBox(height: 10),
                        textDetails(
                            AppAssets.upgrade5Image, "5000+ CRM Integrations"),
                        SizedBox(height: 20),
                        Text(
                          "Learn More   >",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: AppColor.kAppColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.kAppColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text("Try 2 Weeks Free",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white)),
              ),
            ),
            SizedBox(height: 20),
            Text("2 week free trial, with auto-renew. Cancel anytime",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black)),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget textDetails(String icon, String name) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(icon, height: 20),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            name,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
          ),
        ),
      ],
    );
  }
}
