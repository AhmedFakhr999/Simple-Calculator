import 'package:flutter/material.dart';
import 'package:simple_calcc/constants/constant.dart';

class CustomeTextField extends StatelessWidget {
  CustomeTextField({
    super.key,
    required this.contorller,
  });

  TextEditingController contorller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: TextField(
        controller: contorller,
        decoration: InputDecoration(
            hintText: 'Enter a number',
            border: InputBorder.none,
            filled: true,
            fillColor: AppColors.primaryColor),
        style: TextStyle(fontSize: 30, color: Colors.white),
        readOnly: true,
        autofocus: true,
        showCursor: true,
      ),
    );
  }
}
