import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_calcc/Provider/cal_provider.dart';
import 'package:simple_calcc/views/home.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatelessWidget {
  const CalcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Simple Calc',
        theme: ThemeData.dark(useMaterial3: true),
        home: CalcHomePage(),
      ),
    );
  }
}
