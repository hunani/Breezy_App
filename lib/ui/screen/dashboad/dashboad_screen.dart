// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:popol_app/const/app_color.dart';
// import 'package:popol_app/const/app_icon.dart';
// import 'package:popol_app/ui/screen/contacts_tab/contacts_screen.dart';
// import 'package:popol_app/ui/screen/profile_tab/profile_screen.dart';
// import 'package:popol_app/ui/screen/settings_tab/settings_screen.dart';
// import 'package:popol_app/ui/screen/share_tab/share_screen.dart';
//
// import '../insight_tab/insight_screen.dart';
//
// class DashboadScreen extends StatefulWidget {
//   static const String routeName = '/dashboadScreen';
//   const DashboadScreen({Key? key}) : super(key: key);
//
//   @override
//   State<DashboadScreen> createState() => _DashboadScreenState();
// }
//
// class _DashboadScreenState extends State<DashboadScreen> {
//   List<BottomTabModel> list = [
//     BottomTabModel(icon: AppAssets.dashboad1Image, label: "Profile"),
//     BottomTabModel(icon: AppAssets.dashboad2Image, label: "Contacts"),
//     BottomTabModel(icon: AppAssets.dashboad5Image, label: ""),
//     BottomTabModel(icon: AppAssets.dashboad3Image, label: "Scan"),
//     BottomTabModel(icon: AppAssets.dashboad4Image, label: "Settings"),
//   ];
//   int selectIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       bottomNavigationBar: Container(
//         height: 80,
//         width: double.infinity,
//         color: AppColor.kAppColor,
//         child: Stack(
//           clipBehavior: Clip.none,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(
//                 right: 20,
//                 left: 20,
//                 top: 17,
//               ),
//               child: Stack(
//                 clipBehavior: Clip.none,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: list
//                         .asMap()
//                         .map((index, value) => MapEntry(
//                             index,
//                             Row(
//                               children: [
//                                 GestureDetector(
//                                   onTap: () {
//                                     selectIndex = index;
//                                     setState(() {});
//                                     if (selectIndex == 2) {
//                                       Get.toNamed(ShareScreen.routeName);
//                                     }
//                                   },
//                                   child: Column(
//                                     children: [
//                                       Image.asset(
//                                         value.icon,
//                                         height: 22,
//                                         color: selectIndex == index
//                                             ? Colors.red
//                                             : Colors.white,
//                                       ),
//                                       // Icon(
//                                       //   value.icon,
//                                       //   size: index == 2 ? 30 : 28,
//                                       //   color: selectIndex == index
//                                       //       ? Colors.black
//                                       //       : Colors.black26,
//                                       // ),
//                                       SizedBox(height: 6),
//                                       Text(
//                                         value.label,
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 17,
//                                           color: selectIndex == index
//                                               ? Colors.red
//                                               : Colors.white,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             )))
//                         .values
//                         .toList(),
//                   ),
//                   Positioned(
//                     left: 150,
//                     //right: 0,
//                     top: -39,
//                     child: GestureDetector(
//                       onTap: () {
//                         Get.toNamed(ShareScreen.routeName);
//                       },
//                       child: Container(
//                         height: 67,
//                         width: 67,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Colors.white,
//                           border: Border.all(color: Colors.black),
//                         ),
//                         child: Center(
//                           child: Image.asset(
//                             AppAssets.dashboad5Image,
//                             height: 27,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: IndexedStack(
//         index: selectIndex,
//         children: [
//           ProfileScreen(),
//           ContactsScreen(),
//           SizedBox(),
//           InsightScreen(),
//           SettingsScreen(),
//         ],
//       ),
//     );
//   }
// }
//
// class BottomTabModel {
//   final String label;
//   final String icon;
//
//   const BottomTabModel({required this.icon, required this.label});
// }
