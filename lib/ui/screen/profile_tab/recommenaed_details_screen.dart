import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popol_app/const/dispose_keyboard.dart';
import '../../../const/app_color.dart';
import '../../../const/app_icon.dart';

class RecommenaedDetails extends StatelessWidget {
  static const String routeName = '/recommenaedDetails';
  const RecommenaedDetails({Key? key}) : super(key: key);

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
                      Text("Link Store",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 27,
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
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          height: 50,
                          child: TextField(
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            decoration: InputDecoration(
                              hintText: "Search..",
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: AppColor.kAppColor)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: AppColor.kAppColor)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: AppColor.kAppColor)),
                              fillColor: Colors.black12,
                              contentPadding:
                                  EdgeInsets.only(bottom: 5, left: 20),
                              filled: true,
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Icon(Icons.search),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      title("RECOMMENDED"),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 210),
                        child: Divider(thickness: 2, color: AppColor.kAppColor),
                      ),
                      SizedBox(height: 20),
                      containerWidget(AppAssets.messageImage, "Number"),
                      SizedBox(height: 30),
                      title("Contact Info"),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 250),
                        child: Divider(thickness: 2, color: AppColor.kAppColor),
                      ),
                      SizedBox(height: 20),
                      containerWidget(AppAssets.whatsapp2Image, "Whatsapp"),
                      SizedBox(height: 30),
                      title("Social Media"),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 250),
                        child: Divider(thickness: 2, color: AppColor.kAppColor),
                      ),
                      SizedBox(height: 20),
                      containerWidget(AppAssets.tiktokImage, "Tiktok"),
                      SizedBox(height: 30),
                      title("For Business"),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 250),
                        child: Divider(thickness: 2, color: AppColor.kAppColor),
                      ),
                      SizedBox(height: 20),
                      containerWidget(AppAssets.google2Image, "Reviews"),
                      SizedBox(height: 30),
                      title("Payments"),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 280),
                        child: Divider(thickness: 2, color: AppColor.kAppColor),
                      ),
                      SizedBox(height: 20),
                      containerWidget(AppAssets.zelleImage, "Zelle"),
                      SizedBox(height: 30),
                      title("RECOMMENDED"),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 210),
                        child: Divider(thickness: 2, color: AppColor.kAppColor),
                      ),
                      SizedBox(height: 20),
                      containerWidget(AppAssets.wif2Image, "Spotify"),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget containerWidget(String icon, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            5,
            (index) => Container(
              margin: EdgeInsets.only(right: 20),
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.4), blurRadius: 4),
                ],
                borderRadius: BorderRadius.circular(25),
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
                          icon,
                          height: 50,
                        ),
                      )),
                  SizedBox(height: 10),
                  Text(
                    name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                          color: AppColor.kAppColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Add",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 12,
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
      ),
    );
  }

  Widget title(String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        name,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
      ),
    );
  }
}
