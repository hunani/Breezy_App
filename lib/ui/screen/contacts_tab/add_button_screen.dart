import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/app_color.dart';
import '../../../const/app_icon.dart';

class AddButton extends StatelessWidget {
  static const String routeName = '/addButton';
  const AddButton({Key? key}) : super(key: key);

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
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            SizedBox(height: 100),
                            Text(
                              "Purple haze",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Company",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 40,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: AppColor.kAppColor),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text("Bio",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    )),
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ...List.generate(
                                  5,
                                  (index) => CircleAvatar(
                                    radius: 14,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Text("+ 8 936",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    )),
                                SizedBox(width: 15),
                                Image.asset(AppAssets.bioImage, height: 20),
                                Text("231",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    )),
                              ],
                            ),
                            SizedBox(height: 40),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 40,
                                width: 180,
                                decoration: BoxDecoration(
                                  color: AppColor.kAppColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text("Follow +",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          color: Colors.white)),
                                ),
                              ),
                            ),
                            SizedBox(height: 40),
                            SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              clipBehavior: Clip.none,
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: 120,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.4),
                                              blurRadius: 4),
                                        ],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 10),
                                          Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                color: Colors.blue.shade100,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: Image.asset(
                                                  AppAssets.emailBox,
                                                  height: 30,
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
                                  ),
                                  SizedBox(width: 20),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: 120,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.4),
                                              blurRadius: 4),
                                        ],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 10),
                                          Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                color: Colors.green
                                                    .withOpacity(0.4),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: Image.asset(
                                                  AppAssets.intagramImage,
                                                  height: 40,
                                                ),
                                              )),
                                          SizedBox(height: 10),
                                          Text(
                                            "What'sApp",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 10),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: 120,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.4),
                                              blurRadius: 4),
                                        ],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 10),
                                          Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                color: Colors.amber.shade100,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: Image.asset(
                                                  AppAssets.linkdinBox,
                                                  height: 40,
                                                ),
                                              )),
                                          SizedBox(height: 10),
                                          Text(
                                            "Linkdin",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 10),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 40),
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
                            SizedBox(height: 40),
                          ],
                        ),
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
    );
  }
}
