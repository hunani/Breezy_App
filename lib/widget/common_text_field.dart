import 'package:flutter/material.dart';

import '../const/app_color.dart';

enum TextFieldType {
  userName,
  password,
  confirmPassword,
  email,
  enterPassword,
  date,
  gander,
  address,
  name,
  job,
  companyName,
  address2,
  bio,
  email2,
  number,
  website,
  location,
  from,
  to,
  subject,
  mail,
  yourMessage,
  phoneNumber,
}

class CustomTextField extends StatelessWidget {
  final TextFieldType textFieldType;
  final TextEditingController textEditingController;
  final Widget? clearTextWidget;
  final String? Function(String?)? validator;
  final bool obscureText;
  const CustomTextField({
    Key? key,
    this.validator,
    required this.textEditingController,
    required this.textFieldType,
    this.clearTextWidget,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.black),
      textAlignVertical: TextAlignVertical.center,
      textInputAction: textInputAction,
      maxLines: maxLines,
      keyboardType: textInputType,
      obscureText: obscureText,
      controller: textEditingController,
      validator:
          validator ?? (val) => val!.trim().isEmpty ? "field required" : null,
      decoration: InputDecoration(
        focusedBorder: focusedBorder,
        enabledBorder: border,
        fillColor: fillColor,
        filled: true,
        contentPadding: const EdgeInsets.all(17),
        prefixIcon: prefix,
        suffixIcon: suffixIcon,
        hintText: hintText,
      ),
    );
  }

  Color? get fillColor {
    switch (textFieldType) {
      case TextFieldType.from:
      case TextFieldType.to:
      case TextFieldType.subject:
      case TextFieldType.mail:
      case TextFieldType.yourMessage:
      case TextFieldType.phoneNumber:
        return Colors.black12;
    }
    return Color(0xffF8F7FB);
  }

  int? get maxLines {
    switch (textFieldType) {
      case TextFieldType.mail:
      case TextFieldType.yourMessage:
        return 5;
    }
    return null;
  }

  TextInputType? get textInputType {
    switch (textFieldType) {
      case TextFieldType.date:
      case TextFieldType.phoneNumber:
      case TextFieldType.number:
        return TextInputType.number;
    }
    return null;
  }

  TextInputAction? get textInputAction {
    switch (textFieldType) {
      case TextFieldType.userName:
      case TextFieldType.password:
      case TextFieldType.confirmPassword:
      case TextFieldType.email:
      case TextFieldType.enterPassword:
      case TextFieldType.gander:
      case TextFieldType.date:
      case TextFieldType.address:
      case TextFieldType.name:
      case TextFieldType.job:
      case TextFieldType.companyName:
      case TextFieldType.address2:
      case TextFieldType.bio:
      case TextFieldType.from:
      case TextFieldType.to:
      case TextFieldType.number:
      case TextFieldType.email2:
      case TextFieldType.location:
      case TextFieldType.website:
      case TextFieldType.subject:
      case TextFieldType.mail:
      case TextFieldType.yourMessage:
      case TextFieldType.phoneNumber:
        return TextInputAction.next;
      default:
        return null;
    }
  }

  Widget? get prefix {
    switch (textFieldType) {
      case TextFieldType.userName:
        return Icon(
          Icons.account_circle,
          color: AppColor.kAppColor,
          size: 20,
        );
      case TextFieldType.password:
      case TextFieldType.confirmPassword:
      case TextFieldType.enterPassword:
        return const Icon(
          Icons.lock_outline,
          color: Colors.black45,
          size: 19,
        );
      case TextFieldType.email:
        return const Icon(
          Icons.email_outlined,
          color: Colors.black45,
          size: 19,
        );
      default:
        return null;
    }
  }

  Widget? get suffixIcon {
    switch (textFieldType) {
      case TextFieldType.userName:
      case TextFieldType.email:
        return Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: AppColor.kAppColor),
            child: Icon(Icons.done, color: Colors.white, size: 12),
          ),
        );
      default:
        return null;
    }
  }

  InputBorder get border {
    switch (textFieldType) {
      case TextFieldType.name:
      case TextFieldType.job:
      case TextFieldType.companyName:
      case TextFieldType.address2:
      case TextFieldType.bio:
      case TextFieldType.from:
      case TextFieldType.number:
      case TextFieldType.email2:
      case TextFieldType.location:
      case TextFieldType.website:
      case TextFieldType.to:
      case TextFieldType.subject:
      case TextFieldType.mail:
      case TextFieldType.yourMessage:
      case TextFieldType.phoneNumber:
        return OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColor.kAppColor),
        );
      default:
        return OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none);
    }
  }

  InputBorder get focusedBorder {
    switch (textFieldType) {
      case TextFieldType.name:
      case TextFieldType.job:
      case TextFieldType.companyName:
      case TextFieldType.address2:
      case TextFieldType.bio:
      case TextFieldType.number:
      case TextFieldType.email2:
      case TextFieldType.location:
      case TextFieldType.website:
      case TextFieldType.from:
      case TextFieldType.to:
      case TextFieldType.subject:
      case TextFieldType.mail:
      case TextFieldType.yourMessage:
      case TextFieldType.phoneNumber:
        return OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColor.kAppColor),
        );
      default:
        return OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: AppColor.kAppColor),
        );
    }
  }

  String? get hintText {
    switch (textFieldType) {
      case TextFieldType.userName:
        return "User Name";
      case TextFieldType.password:
        return "Enter your password";
      case TextFieldType.confirmPassword:
        return "Confirm Password";
      case TextFieldType.email:
        return "Email";
      case TextFieldType.enterPassword:
        return "Enter Your Password";
      case TextFieldType.date:
        return "Date of Birth";
      case TextFieldType.gander:
        return "Gander";
      case TextFieldType.address:
        return "About";
      case TextFieldType.name:
        return "Name";
      case TextFieldType.job:
        return "Job Title";
      case TextFieldType.companyName:
        return "Company Name";
      case TextFieldType.address2:
        return "Address";
      case TextFieldType.bio:
        return "Bio";
      case TextFieldType.from:
        return "From";
      case TextFieldType.to:
        return "To";
      case TextFieldType.subject:
        return "Subject";
      case TextFieldType.mail:
        return "Mail";
      case TextFieldType.yourMessage:
        return "Phone Number";
      case TextFieldType.phoneNumber:
        return "Your Message";
      case TextFieldType.number:
        return "Number";
      case TextFieldType.email2:
        return "Email";
      case TextFieldType.location:
        return "Location";
      case TextFieldType.website:
        return "Website";
      default:
        return null;
    }
  }
}
