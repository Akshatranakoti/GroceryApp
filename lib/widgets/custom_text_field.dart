import 'package:flutter/material.dart';
import 'package:grocery_app/all_imports.dart';
import 'package:grocery_app/helper/sizedbox_helper.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData iconData;
  final bool obscureText;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final String errorMessage;
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.iconData,
      required this.hintText,
      this.obscureText = false,
      this.onChanged,
      this.suffixIcon,
      required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.075,
          decoration: BoxDecoration(
            color: AppColors.whiteFEFFFFE,
            border: Border.all(
                color: AppColors.grey696969.withOpacity(0.1),
                width: AppDimen.px1),
            boxShadow: [
              BoxShadow(
                  color: AppColors.grey696969.withOpacity(0.05),
                  blurRadius: AppDimen.px5,
                  spreadRadius: AppDimen.px5)
            ],
            borderRadius: BorderRadius.circular(AppDimen.px10),
          ),
          padding: EdgeInsets.symmetric(horizontal: AppDimen.px10),
          child: Row(children: [
            Icon(
              iconData,
              color: AppColors.redff0000,
            ),
            SizedBoxHelper.sizedBox_10,
            Expanded(
                child: TextField(
              cursorWidth: 0.5,
              onChanged: onChanged,
              obscureText: obscureText,
              controller: controller,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  hintText: hintText,
                  suffixIcon: suffixIcon,
                  labelText: hintText,
                  hintStyle: AppTextStyle.grey696969_18),
            ))
          ]),
        ),
        if (errorMessage.isNotEmpty)
          Text(
            errorMessage,
            style: AppTextStyle.red_15,
          ),
        SizedBoxHelper.sizedBox10
      ],
    );
  }
}
