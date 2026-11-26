import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Style/coloursExtention.dart';

class MainTextFormFiled extends StatelessWidget {
  const MainTextFormFiled({
    super.key,
    required this.themeColors,
    required this.hintText,
    required  this.controller,
  });

  final TutorDeskColours? themeColors;
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: this.controller,
      cursorColor: themeColors?.primaryBlack,
      decoration: InputDecoration(

          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: themeColors?.textGrey.withOpacity(0.1)
      ),


    );
  }
}
