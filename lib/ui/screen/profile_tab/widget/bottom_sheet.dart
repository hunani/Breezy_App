import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../const/app_color.dart';

void sortBottomSheet() async {
  Get.bottomSheet(
    const BottomSheet(),
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

class BottomSheet extends StatelessWidget {
  const BottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 30),
        Text(
          "Card Actions",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        Divider(thickness: 2.5, color: Colors.white),
        Text(
          "Preview Card",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: AppColor.kAppColor),
        ),
        Divider(thickness: 2.5, color: Colors.white),
        Text(
          "Share Card",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: AppColor.kAppColor),
        ),
        Divider(thickness: 2.5, color: Colors.white),
        Text(
          "Duplicate Card",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: AppColor.kAppColor),
        ),
        Divider(thickness: 2.5, color: Colors.white),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: AppColor.kAppColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Text(
                    "Delete Card",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: AppColor.kAppColor),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: AppColor.kAppColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
