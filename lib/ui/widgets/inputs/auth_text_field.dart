import 'package:flutter/material.dart';
import 'package:vyntra_learn/core/resources/app_colors.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    this.controller,
    this.hintText,
    this.label,
    this.inputType,
    this.suffixIcon,
    this.obscureText = false,
  });
  final TextEditingController? controller;
  final String? hintText;
  final String? label;
  final TextInputType? inputType;
  final Widget? suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: SizedBox(
            width: 390,
            height: 48,
            child: TextFormField(
              controller: controller,
              keyboardType: inputType,
              obscureText: obscureText,
              enableInteractiveSelection: true,
              decoration: InputDecoration(
                hintText: hintText,
                suffixIcon: suffixIcon,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textgrey),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textOrange, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textgrey),
                  borderRadius: BorderRadius.circular(8),
                ),
                hintStyle: TextStyle(color: AppColors.textgrey),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
