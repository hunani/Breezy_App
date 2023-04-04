// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:popol_app/const/dispose_keyboard.dart';
// import 'package:popol_app/ui/screen/contacts_tab/text_your_card_screen.dart';
// import '../../../const/app_color.dart';
// import '../../../const/app_icon.dart';
// import '../../../widget/common_text_field.dart';
//
// class ComposeScreen extends StatefulWidget {
//   static const String routeName = '/composeScreen';
//   const ComposeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<ComposeScreen> createState() => _ComposeScreenState();
// }
//
// class _ComposeScreenState extends State<ComposeScreen> {
//   TextEditingController fromController = TextEditingController();
//   TextEditingController toController = TextEditingController();
//   TextEditingController subjectController = TextEditingController();
//   TextEditingController mailController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         disposeKeyboard();
//       },
//       child: Scaffold(
//         body: SafeArea(
//           child: Column(
//             children: [
//               Container(
//                 height: 55,
//                 width: double.infinity,
//                 color: AppColor.kAppColor,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       GestureDetector(
//                           onTap: () {
//                             Get.back();
//                           },
//                           child: Image.asset(
//                             AppAssets.removeImage,
//                             height: 20,
//                             color: Colors.white,
//                           )),
//                       Text("Compose",
//                           style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 25,
//                             color: Colors.white,
//                           )),
//                       Image.asset(AppAssets.removeImage,
//                           height: 10, color: AppColor.kAppColor),
//                     ],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 15),
//                 child: Column(
//                   children: [
//                     SizedBox(height: 40),
//                     CustomTextField(
//                       validator: (val) =>
//                           val!.trim().isEmpty ? "field required" : null,
//                       textFieldType: TextFieldType.from,
//                       textEditingController: fromController,
//                     ),
//                     SizedBox(height: 15),
//                     CustomTextField(
//                       validator: (val) =>
//                           val!.trim().isEmpty ? "field required" : null,
//                       textFieldType: TextFieldType.to,
//                       textEditingController: toController,
//                     ),
//                     SizedBox(height: 15),
//                     CustomTextField(
//                       validator: (val) =>
//                           val!.trim().isEmpty ? "field required" : null,
//                       textFieldType: TextFieldType.subject,
//                       textEditingController: subjectController,
//                     ),
//                     SizedBox(height: 15),
//                     CustomTextField(
//                       validator: (val) =>
//                           val!.trim().isEmpty ? "field required" : null,
//                       textFieldType: TextFieldType.mail,
//                       textEditingController: mailController,
//                     ),
//                     SizedBox(height: 40),
//                     GestureDetector(
//                       onTap: () {
//                         Get.toNamed(TextYourCardScreen.routeName);
//                       },
//                       child: Container(
//                         height: 50,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           color: AppColor.kAppColor,
//                           borderRadius: BorderRadius.circular(40),
//                         ),
//                         child: Center(
//                           child: Text("Send",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 20,
//                                   color: Colors.white)),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
