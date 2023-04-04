import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popol_app/const/app_icon.dart';

void bottomSheet() async {
  Get.bottomSheet(
    const AlreadyAccountBottomSheet(),
    backgroundColor: Colors.white,
    isScrollControlled: true,
  );
}

class AlreadyAccountBottomSheet extends StatelessWidget {
  const AlreadyAccountBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 15),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text("Sign in with email",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white)),
              ],
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: Text("OR",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
          ),
          SizedBox(height: 15),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppAssets.googleImage, height: 20),
                SizedBox(width: 10),
                Text("Sign in with Google",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    )),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.microwave_sharp),
                SizedBox(width: 10),
                Text("Sign in with Microsoft",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    )),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppAssets.facebookImage, height: 20),
                SizedBox(width: 10),
                Text("Sign in with Facebook",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    )),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
