import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_calcc/Provider/cal_provider.dart';
import 'package:simple_calcc/constants/constant.dart';
import 'package:simple_calcc/views/widget_screen.dart';
import 'package:simple_calcc/widgets/button.dart';
import 'package:simple_calcc/widgets/calculatro_button.dart';
import 'package:simple_calcc/widgets/textfiled.dart';

class CalcHomePage extends StatelessWidget {
  CalcHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    final padding = EdgeInsets.symmetric(vertical: 20, horizontal: 20);
    final decoration = BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    );
    return Consumer<CalculatorProvider>(
      builder: (context, provider, _) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Calculator yabbba'),
            centerTitle: true,
            backgroundColor: Colors.black,
            elevation: 0,
          ),
          body: Column(
            spacing: 100,
            children: [
              CustomeTextField(contorller: provider.controller),
              Padding(
                padding: padding,
                child: Container(
                  height: screenheight * 0.6,
                  width: double.infinity,
                  padding: padding,
                  decoration: decoration,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(4, (index) => buttonList[index]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(4, (index) => buttonList[index + 4]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(4, (index) => buttonList[index + 8]),
                      ),
                      Row(
                        spacing: 11,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              spacing: 10,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      3, (index) => buttonList[index + 12]),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      3, (index) => buttonList[index + 15]),
                                ),
                              ],
                            ),
                          ),
                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                colors: [
                                  const Color.fromARGB(255, 3, 95, 253),
                                  AppColors.secondaryColor,
                                  AppColors.accentColor
                                ],
                              ).createShader(bounds);
                            },
                            child: Calculatebutton(screenwidth: screenwidth),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
