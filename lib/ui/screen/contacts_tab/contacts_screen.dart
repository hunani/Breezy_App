import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popol_app/const/app_color.dart';
import 'package:popol_app/const/app_icon.dart';
import 'package:popol_app/const/dispose_keyboard.dart';
import 'package:popol_app/ui/screen/contacts_tab/add_button_screen.dart';
import 'package:popol_app/ui/screen/contacts_tab/send_screen.dart';
import 'compose_screen.dart';
import 'contacts_details.dart';

class ContactsScreen extends StatelessWidget {
  static const String routeName = '/contactsScreen';
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        disposeKeyboard();
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                            Get.toNamed(SendScreen.routeName);
                          },
                          child: Image.asset(AppAssets.sendImage, height: 30)),
                      Text("Contacts",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 27,
                            color: Colors.white,
                          )),
                      Image.asset(AppAssets.sendImage,
                          height: 30, color: AppColor.kAppColor),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 50,
                                child: TextField(
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                  decoration: InputDecoration(
                                    hintText: "Search..",
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                            color: AppColor.kAppColor)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                            color: AppColor.kAppColor)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                            color: AppColor.kAppColor)),
                                    fillColor: Colors.black12,
                                    contentPadding:
                                        EdgeInsets.only(bottom: 5, left: 20),
                                    filled: true,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            GestureDetector(
                                onTap: () {
                                  Get.toNamed(AddButton.routeName);
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 43,
                                  color: AppColor.kAppColor,
                                )),
                          ],
                        ),
                        SizedBox(height: 20),
                        ...List.generate(
                          4,
                          (index) => GestureDetector(
                            onTap: () {
                              Get.toNamed(ContactsDetailsScreen.routeName);
                            },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 30),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        blurRadius: 5),
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(AppAssets.rectangle,
                                            height: 65),
                                        // Container(
                                        //   height: 60,
                                        //   width: 60,
                                        //   decoration: BoxDecoration(
                                        //     color: Colors.black12,
                                        //     borderRadius:
                                        //         BorderRadius.circular(10),
                                        //   ),
                                        // ),
                                        SizedBox(width: 15),
                                        Text("Purple haze",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20,
                                            )),
                                        Spacer(),
                                        Text("11:36",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                            )),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
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
                                        Spacer(),
                                        Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: AppColor.kAppColor,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Center(
                                            child: Text("Join",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 100),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
