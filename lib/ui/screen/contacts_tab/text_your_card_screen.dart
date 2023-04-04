// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:popol_app/const/dispose_keyboard.dart';
//
// import '../../../const/app_color.dart';
// import '../../../const/app_icon.dart';
// import '../../../widget/common_text_field.dart';
//
// class TextYourCardScreen extends StatefulWidget {
//   static const String routeName = '/textYourCardScreen';
//   const TextYourCardScreen({Key? key}) : super(key: key);
//
//   @override
//   State<TextYourCardScreen> createState() => _TextYourCardScreenState();
// }
//
// class _TextYourCardScreenState extends State<TextYourCardScreen> {
//   TextEditingController phoneNumberController = TextEditingController();
//   TextEditingController youMessageController = TextEditingController();
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
//                       Text("Text Your Card",
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
//                       textFieldType: TextFieldType.phoneNumber,
//                       textEditingController: phoneNumberController,
//                     ),
//                     SizedBox(height: 15),
//                     CustomTextField(
//                       validator: (val) =>
//                           val!.trim().isEmpty ? "field required" : null,
//                       textFieldType: TextFieldType.yourMessage,
//                       textEditingController: youMessageController,
//                     ),
//                     SizedBox(height: 40),
//                     GestureDetector(
//                       onTap: () {},
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
