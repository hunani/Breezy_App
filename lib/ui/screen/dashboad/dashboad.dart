import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popol_app/const/app_color.dart';
import 'package:popol_app/const/app_icon.dart';
import 'package:popol_app/ui/screen/profile_tab/profile_screen.dart';
import '../contacts_tab/contacts_screen.dart';
import '../insight_tab/insight_screen.dart';
import '../settings_tab/settings_screen.dart';
import '../share_tab/share_screen.dart';

class DashboadScreen2 extends StatefulWidget {
  static const String routeName = '/dashboadScreen2';
  const DashboadScreen2({Key? key}) : super(key: key);

  @override
  State<DashboadScreen2> createState() => _DashboadScreen2State();
}

class _DashboadScreen2State extends State<DashboadScreen2> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          IndexedStack(
            index: currentIndex,
            children: [
              ProfileScreen(),
              ContactsScreen(),
              InsightScreen(),
              SettingsScreen(),
            ],
          ),
          Container(
            width: size.width,
            height: 80,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                CustomPaint(
                  size: Size(size.width, 80),
                  painter: BNBCustomPainter(),
                ),
                Center(
                  heightFactor: 0.6,
                  child: FloatingActionButton(
                      backgroundColor: AppColor.kAppColor,
                      child: Image.asset(
                        AppAssets.dashboad5Image,
                        height: 22,
                        color: Colors.white,
                      ),
                      elevation: 0.1,
                      onPressed: () {
                        Get.toNamed(ShareScreen.routeName);
                      }),
                ),
                Container(
                  width: size.width,
                  height: 80,
                  //color: Colors.purple,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Spacer(),
                          GestureDetector(
                            child: Image.asset(
                              AppAssets.dashboad1Image,
                              height: 22,
                              color:
                                  currentIndex == 0 ? Colors.red : Colors.white,
                            ),
                            onTap: () {
                              setBottomBarIndex(0);
                            },
                            //splashColor: Colors.white,
                          ),
                          SizedBox(height: 5),
                          GestureDetector(
                            onTap: () {
                              setBottomBarIndex(0);
                            },
                            child: Text(
                              "Profile",
                              style: TextStyle(
                                fontSize: 18,
                                color: currentIndex == 0
                                    ? Colors.red
                                    : Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                      Column(
                        children: [
                          Spacer(),
                          GestureDetector(
                              child: Image.asset(
                                AppAssets.dashboad2Image,
                                height: 22,
                                color: currentIndex == 1
                                    ? Colors.red
                                    : Colors.white,
                              ),
                              onTap: () {
                                setBottomBarIndex(1);
                              }),
                          SizedBox(height: 5),
                          GestureDetector(
                            onTap: () {
                              setBottomBarIndex(1);
                            },
                            child: Text(
                              "Contacts",
                              style: TextStyle(
                                fontSize: 18,
                                color: currentIndex == 1
                                    ? Colors.red
                                    : Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                      Container(
                        width: size.width * 0.20,
                      ),
                      Column(
                        children: [
                          Spacer(),
                          GestureDetector(
                              child: Image.asset(
                                AppAssets.dashboad3Image,
                                height: 22,
                                color: currentIndex == 2
                                    ? Colors.red
                                    : Colors.white,
                              ),
                              onTap: () {
                                setBottomBarIndex(2);
                              }),
                          SizedBox(height: 5),
                          GestureDetector(
                            onTap: () {
                              setBottomBarIndex(2);
                            },
                            child: Text(
                              "Insight",
                              style: TextStyle(
                                fontSize: 18,
                                color: currentIndex == 2
                                    ? Colors.red
                                    : Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                      Column(
                        children: [
                          Spacer(),
                          GestureDetector(
                              child: Image.asset(
                                AppAssets.dashboad4Image,
                                height: 22,
                                color: currentIndex == 3
                                    ? Colors.red
                                    : Colors.white,
                              ),
                              onTap: () {
                                setBottomBarIndex(3);
                              }),
                          SizedBox(height: 5),
                          GestureDetector(
                            onTap: () {
                              setBottomBarIndex(3);
                            },
                            child: Text(
                              "Setting",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: currentIndex == 3
                                      ? Colors.red
                                      : Colors.white),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
    // return Scaffold(
    //   resizeToAvoidBottomInset: false,
    //   // bottomNavigationBar: Column(
    //   //   mainAxisSize: MainAxisSize.min,
    //   //   children: [
    //   //     Container(
    //   //       height: 80,
    //   //       color: Colors.transparent,
    //   //       child: CustomPaint(
    //   //         size: Size(size.width, 80),
    //   //         painter: BNBCustomPainter(),
    //   //         child: Row(
    //   //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   //           children: [
    //   //             Column(
    //   //               children: [
    //   //                 const Spacer(),
    //   //                 GestureDetector(
    //   //                   child: Image.asset(
    //   //                     AppAssets.dashboad1Image,
    //   //                     height: 22,
    //   //                     color: currentIndex == 0 ? Colors.red : Colors.white,
    //   //                   ),
    //   //                   onTap: () {
    //   //                     setBottomBarIndex(0);
    //   //                   },
    //   //                   //splashColor: Colors.white,
    //   //                 ),
    //   //                 const SizedBox(height: 5),
    //   //                 GestureDetector(
    //   //                   onTap: () {
    //   //                     setBottomBarIndex(0);
    //   //                   },
    //   //                   child: Text(
    //   //                     "Profile",
    //   //                     style: TextStyle(
    //   //                       fontSize: 18,
    //   //                       color:
    //   //                           currentIndex == 0 ? Colors.red : Colors.white,
    //   //                     ),
    //   //                   ),
    //   //                 ),
    //   //                 SizedBox(height: 10),
    //   //               ],
    //   //             ),
    //   //             Column(
    //   //               children: [
    //   //                 Spacer(),
    //   //                 GestureDetector(
    //   //                     child: Image.asset(
    //   //                       AppAssets.dashboad2Image,
    //   //                       height: 22,
    //   //                       color:
    //   //                           currentIndex == 1 ? Colors.red : Colors.white,
    //   //                     ),
    //   //                     onTap: () {
    //   //                       setBottomBarIndex(1);
    //   //                     }),
    //   //                 SizedBox(height: 5),
    //   //                 GestureDetector(
    //   //                   onTap: () {
    //   //                     setBottomBarIndex(1);
    //   //                   },
    //   //                   child: Text(
    //   //                     "Contacts",
    //   //                     style: TextStyle(
    //   //                       fontSize: 18,
    //   //                       color:
    //   //                           currentIndex == 1 ? Colors.red : Colors.white,
    //   //                     ),
    //   //                   ),
    //   //                 ),
    //   //                 SizedBox(height: 10),
    //   //               ],
    //   //             ),
    //   //             Container(
    //   //               width: size.width * 0.20,
    //   //             ),
    //   //             Column(
    //   //               children: [
    //   //                 Spacer(),
    //   //                 GestureDetector(
    //   //                     child: Image.asset(
    //   //                       AppAssets.dashboad3Image,
    //   //                       height: 22,
    //   //                       color:
    //   //                           currentIndex == 2 ? Colors.red : Colors.white,
    //   //                     ),
    //   //                     onTap: () {
    //   //                       setBottomBarIndex(2);
    //   //                     }),
    //   //                 SizedBox(height: 5),
    //   //                 GestureDetector(
    //   //                   onTap: () {
    //   //                     setBottomBarIndex(2);
    //   //                   },
    //   //                   child: Text(
    //   //                     "Insight",
    //   //                     style: TextStyle(
    //   //                       fontSize: 18,
    //   //                       color:
    //   //                           currentIndex == 2 ? Colors.red : Colors.white,
    //   //                     ),
    //   //                   ),
    //   //                 ),
    //   //                 SizedBox(height: 10),
    //   //               ],
    //   //             ),
    //   //             Column(
    //   //               children: [
    //   //                 Spacer(),
    //   //                 GestureDetector(
    //   //                     child: Image.asset(
    //   //                       AppAssets.dashboad4Image,
    //   //                       height: 22,
    //   //                       color:
    //   //                           currentIndex == 3 ? Colors.red : Colors.white,
    //   //                     ),
    //   //                     onTap: () {
    //   //                       setBottomBarIndex(3);
    //   //                     }),
    //   //                 SizedBox(height: 5),
    //   //                 GestureDetector(
    //   //                   onTap: () {
    //   //                     setBottomBarIndex(3);
    //   //                   },
    //   //                   child: Text(
    //   //                     "Setting",
    //   //                     style: TextStyle(
    //   //                         fontSize: 18,
    //   //                         color: currentIndex == 3
    //   //                             ? Colors.red
    //   //                             : Colors.white),
    //   //                   ),
    //   //                 ),
    //   //                 SizedBox(height: 10),
    //   //               ],
    //   //             ),
    //   //           ],
    //   //         ),
    //   //       ),
    //   //     ),
    //   //   ],
    //   // ),
    //   body: Stack(
    //     children: [
    //       Expanded(
    //         child: IndexedStack(
    //           index: currentIndex,
    //           children: [
    //             ProfileScreen(),
    //             ContactsScreen(),
    //             InsightScreen(),
    //             SettingsScreen(),
    //           ],
    //         ),
    //       ),
    //       Positioned(
    //         bottom: 0,
    //         left: 0,
    //         right: 0,
    //         child: Container(
    //           height: 80,
    //           color: Colors.transparent,
    //           child: CustomPaint(
    //             size: Size(size.width, 80),
    //             painter: BNBCustomPainter(),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: [
    //                 Column(
    //                   children: [
    //                     const Spacer(),
    //                     GestureDetector(
    //                       child: Image.asset(
    //                         AppAssets.dashboad1Image,
    //                         height: 22,
    //                         color:
    //                             currentIndex == 0 ? Colors.red : Colors.white,
    //                       ),
    //                       onTap: () {
    //                         setBottomBarIndex(0);
    //                       },
    //                       //splashColor: Colors.white,
    //                     ),
    //                     const SizedBox(height: 5),
    //                     GestureDetector(
    //                       onTap: () {
    //                         setBottomBarIndex(0);
    //                       },
    //                       child: Text(
    //                         "Profile",
    //                         style: TextStyle(
    //                           fontSize: 18,
    //                           color:
    //                               currentIndex == 0 ? Colors.red : Colors.white,
    //                         ),
    //                       ),
    //                     ),
    //                     SizedBox(height: 10),
    //                   ],
    //                 ),
    //                 Column(
    //                   children: [
    //                     Spacer(),
    //                     GestureDetector(
    //                         child: Image.asset(
    //                           AppAssets.dashboad2Image,
    //                           height: 22,
    //                           color:
    //                               currentIndex == 1 ? Colors.red : Colors.white,
    //                         ),
    //                         onTap: () {
    //                           setBottomBarIndex(1);
    //                         }),
    //                     SizedBox(height: 5),
    //                     GestureDetector(
    //                       onTap: () {
    //                         setBottomBarIndex(1);
    //                       },
    //                       child: Text(
    //                         "Contacts",
    //                         style: TextStyle(
    //                           fontSize: 18,
    //                           color:
    //                               currentIndex == 1 ? Colors.red : Colors.white,
    //                         ),
    //                       ),
    //                     ),
    //                     SizedBox(height: 10),
    //                   ],
    //                 ),
    //                 Container(
    //                   width: size.width * 0.20,
    //                 ),
    //                 Column(
    //                   children: [
    //                     Spacer(),
    //                     GestureDetector(
    //                         child: Image.asset(
    //                           AppAssets.dashboad3Image,
    //                           height: 22,
    //                           color:
    //                               currentIndex == 2 ? Colors.red : Colors.white,
    //                         ),
    //                         onTap: () {
    //                           setBottomBarIndex(2);
    //                         }),
    //                     SizedBox(height: 5),
    //                     GestureDetector(
    //                       onTap: () {
    //                         setBottomBarIndex(2);
    //                       },
    //                       child: Text(
    //                         "Insight",
    //                         style: TextStyle(
    //                           fontSize: 18,
    //                           color:
    //                               currentIndex == 2 ? Colors.red : Colors.white,
    //                         ),
    //                       ),
    //                     ),
    //                     SizedBox(height: 10),
    //                   ],
    //                 ),
    //                 Column(
    //                   children: [
    //                     Spacer(),
    //                     GestureDetector(
    //                         child: Image.asset(
    //                           AppAssets.dashboad4Image,
    //                           height: 22,
    //                           color:
    //                               currentIndex == 3 ? Colors.red : Colors.white,
    //                         ),
    //                         onTap: () {
    //                           setBottomBarIndex(3);
    //                         }),
    //                     SizedBox(height: 5),
    //                     GestureDetector(
    //                       onTap: () {
    //                         setBottomBarIndex(3);
    //                       },
    //                       child: Text(
    //                         "Setting",
    //                         style: TextStyle(
    //                             fontSize: 18,
    //                             color: currentIndex == 3
    //                                 ? Colors.red
    //                                 : Colors.white),
    //                       ),
    //                     ),
    //                     SizedBox(height: 10),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = AppColor.kAppColor
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
