// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../signup_login/sign_up2_screen.dart';
// import 'already_account.dart';
//
// class SplashScreen extends StatelessWidget {
//   static const String routeName = '/splashScreen';
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15),
//           child: Column(
//             children: [
//               SizedBox(height: 20),
//               Center(
//                 child: Text("Popl",
//                     style:
//                         TextStyle(fontWeight: FontWeight.w600, fontSize: 30)),
//               ),
//               Spacer(),
//               Center(
//                 child: Text("Build and Manage Your Network",
//                     style:
//                         TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
//               ),
//               SizedBox(height: 15),
//               Center(
//                 child: Text(
//                     "Popl keeps a list of everyone you've connected with. Instantly export to any CRM",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 17,
//                         color: Colors.black38)),
//               ),
//               SizedBox(height: 40),
//               GestureDetector(
//                 onTap: () {
//                   Get.toNamed(SignUpScreen.routeName);
//                 },
//                 child: Container(
//                   height: 55,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius: BorderRadius.circular(40),
//                   ),
//                   child: Center(
//                     child: Text("Create an Account",
//                         style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 18,
//                             color: Colors.white)),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               GestureDetector(
//                 onTap: () {
//                   bottomSheet();
//                 },
//                 child: Container(
//                   height: 55,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.black12,
//                     borderRadius: BorderRadius.circular(40),
//                   ),
//                   child: Center(
//                     child: Text("Already have an account? Sign In",
//                         style: TextStyle(
//                             fontWeight: FontWeight.w600, fontSize: 18)),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/app_color.dart';
import '../../../const/app_icon.dart';
import '../signup/sign_up_screen.dart';

class SplashModel {
  final String image;
  final String description;
  final String title;

  SplashModel(
      {required this.image, required this.description, required this.title});
}

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splashScreen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  ValueNotifier<int> valueNotifier = ValueNotifier(0);
  PageController pageController = PageController();
  List<SplashModel> onBoardingData = [
    SplashModel(
        image: AppAssets.image1,
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
        title: "Instantly Share Anything"),
    SplashModel(
        image: AppAssets.image2,
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
        title: "Make new friends with ease"),
    SplashModel(
        image: AppAssets.image3,
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
        title: "Express yourself to the world")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kAppColor,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const Spacer(),
                Container(
                  height: 280,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
              ],
            ),
            PageView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: onBoardingData.length,
              controller: pageController,
              onPageChanged: (index) {
                valueNotifier.value = index;
              },
              itemBuilder: (BuildContext context, int index) {
                final e = onBoardingData[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Image.asset(
                        e.image,
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.bottomCenter,
                        width: double.infinity,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              e.title,
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            e.description,
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 150),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.offAllNamed(SignUpScreen.routeName);
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: AppColor.kAppColor),
                        ),
                      ),
                      Spacer(),
                      ValueListenableBuilder(
                        valueListenable: valueNotifier,
                        builder:
                            (BuildContext context, int value, Widget? child) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                                onBoardingData.asMap().entries.map((entry) {
                              return Container(
                                width: 16,
                                height: 16,
                                margin: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColor.kAppColor.withOpacity(
                                        value == entry.key ? 0.9 : 0.2)),
                              );
                            }).toList(),
                          );
                        },
                      ),
                      Spacer(),
                      IconButton(
                        iconSize: 60,
                        onPressed: () {
                          if (pageController.page == 2) {
                            Get.offAllNamed(SignUpScreen.routeName);
                          } else {
                            pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease);
                          }
                        },
                        icon: Image.asset(
                          AppAssets.next,
                        ),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
