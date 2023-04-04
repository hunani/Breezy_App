import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../const/app_color.dart';
import '../../../const/app_icon.dart';
import '../../../const/dispose_keyboard.dart';
import '../../../widget/common_text_field.dart';

class EditImageScreen extends StatefulWidget {
  static const String routeName = '/editImageScreen';
  const EditImageScreen({Key? key}) : super(key: key);

  @override
  State<EditImageScreen> createState() => _EditImageScreenState();
}

class _EditImageScreenState extends State<EditImageScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        disposeKeyboard();
      },
      child: Scaffold(
        backgroundColor: AppColor.kBackgroundColor,
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
                      Text("Create Contact",
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
                            SizedBox(height: 100),
                            Text(
                              "Edit Image",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 20),
                            Expanded(
                              child: SingleChildScrollView(
                                physics: BouncingScrollPhysics(),
                                child: Column(
                                  children: [
                                    CustomTextField(
                                      validator: (val) => val!.trim().isEmpty
                                          ? "field required"
                                          : null,
                                      textFieldType: TextFieldType.name,
                                      textEditingController: nameController,
                                    ),
                                    SizedBox(height: 15),
                                    CustomTextField(
                                      validator: (val) => val!.trim().isEmpty
                                          ? "field required"
                                          : null,
                                      textFieldType: TextFieldType.email2,
                                      textEditingController: emailController,
                                    ),
                                    SizedBox(height: 15),
                                    CustomTextField(
                                      validator: (val) => val!.trim().isEmpty
                                          ? "field required"
                                          : null,
                                      textFieldType: TextFieldType.number,
                                      textEditingController: numberController,
                                    ),
                                    SizedBox(height: 15),
                                    CustomTextField(
                                      validator: (val) => val!.trim().isEmpty
                                          ? "field required"
                                          : null,
                                      textFieldType: TextFieldType.job,
                                      textEditingController: jobController,
                                    ),
                                    SizedBox(height: 15),
                                    CustomTextField(
                                      validator: (val) => val!.trim().isEmpty
                                          ? "field required"
                                          : null,
                                      textFieldType: TextFieldType.companyName,
                                      textEditingController: companyController,
                                    ),
                                    SizedBox(height: 15),
                                    CustomTextField(
                                      validator: (val) => val!.trim().isEmpty
                                          ? "field required"
                                          : null,
                                      textFieldType: TextFieldType.website,
                                      textEditingController: websiteController,
                                    ),
                                    SizedBox(height: 15),
                                    CustomTextField(
                                      validator: (val) => val!.trim().isEmpty
                                          ? "field required"
                                          : null,
                                      textFieldType: TextFieldType.location,
                                      textEditingController: locationController,
                                    ),
                                    SizedBox(height: 40),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 15),
                                        height: 55,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: AppColor.kAppColor,
                                          borderRadius:
                                              BorderRadius.circular(40),
                                        ),
                                        child: Center(
                                          child: Text("Create Contact",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 20,
                                                  color: Colors.white)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                  ],
                                ),
                              ),
                            ),
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
                        child: Center(
                            child: Image.asset(AppAssets.dashboad1Image)),
                      ),
                    ),
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
