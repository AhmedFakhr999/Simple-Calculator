import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_calcc/Provider/cal_provider.dart';

import '../constants/constant.dart';

class Button1 extends StatelessWidget {
  Button1({
    super.key,
    required this.label,
    this.textcolor = Colors.white,
    this.onTap,
  });
  final String label;
  final Color textcolor;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CalculatorProvider>(context, listen: false).setvalue(label);
      },
      child: Material(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(50),
        elevation: 10,
        child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              colors: [
                const Color.fromARGB(255, 3, 95, 253),
                textcolor,
                AppColors.accentColor
              ],
            ).createShader(bounds);
          },
          child: CircleAvatar(
            radius: 36,
            backgroundColor: AppColors.primaryColor,
            child: Text(
              label,
              style: TextStyle(fontSize: 30, color: textcolor),
            ),
          ),
        ),
      ),
    );
  }
}
