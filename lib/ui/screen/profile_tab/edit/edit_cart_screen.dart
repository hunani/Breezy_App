import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popol_app/const/app_icon.dart';
import 'package:popol_app/const/dispose_keyboard.dart';
import 'package:popol_app/ui/screen/profile_tab/edit/preview_cart_screen.dart';

import '../../../../const/app_color.dart';
import '../../../../widget/common_text_field.dart';

class EditCartScreen extends StatefulWidget {
  static const String routeName = '/editCartScreen';
  const EditCartScreen({Key? key}) : super(key: key);

  @override
  State<EditCartScreen> createState() => _EditCartScreenState();
}

class _EditCartScreenState extends State<EditCartScreen> {
  int selectIndex = 0;
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  List<Color> list = [
    Colors.white,
    Colors.black,
    Colors.pink,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blueAccent,
    Colors.purple
  ];
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
                                      textFieldType: TextFieldType.address2,
                                      textEditingController: addressController,
                                    ),
                                    SizedBox(height: 15),
                                    CustomTextField(
                                      validator: (val) => val!.trim().isEmpty
                                          ? "field required"
                                          : null,
                                      textFieldType: TextFieldType.bio,
                                      textEditingController: bioController,
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Colors.black),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Profile Themes",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18),
                                            ),
                                            SizedBox(height: 15),
                                            Row(
                                              children: list
                                                  .asMap()
                                                  .map((index, value) =>
                                                      MapEntry(
                                                        index,
                                                        GestureDetector(
                                                          onTap: () {
                                                            selectIndex = index;
                                                            setState(() {});
                                                          },
                                                          child: Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right: 10),
                                                            height: 25,
                                                            width: 25,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: value,
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Center(
                                                                child: Icon(
                                                              Icons.done,
                                                              size: 18,
                                                              color: selectIndex ==
                                                                      index
                                                                  ? Colors.black
                                                                  : Colors
                                                                      .transparent,
                                                            )),
                                                          ),
                                                        ),
                                                      ))
                                                  .values
                                                  .toList(),
                                            ),
                                            SizedBox(height: 15),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          AppColor.kAppColor,
                                          AppColor.kAppColor.withOpacity(0.2)
                                        ]),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 15),
                                        child: Column(
                                          children: [
                                            Icon(Icons.add,
                                                color: Colors.white, size: 50),
                                            SizedBox(height: 15),
                                            Text(
                                              "Add Info to Card",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                            SizedBox(height: 15),
                                            Text(
                                              "Add contact info, link, and more to your card",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 40),
                                    GestureDetector(
                                      onTap: () {
                                        Get.toNamed(
                                            PreviewCartScreen.routeName);
                                      },
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
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 15),
                                        height: 55,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.3),
                                                blurRadius: 4)
                                          ],
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(40),
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
      ),
    );
  }
}
