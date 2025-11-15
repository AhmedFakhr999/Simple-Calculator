import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_calcc/Provider/cal_provider.dart';

class Calculatebutton extends StatelessWidget {
  const Calculatebutton({
    super.key,
    required this.screenwidth,
  });

  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Provider.of<CalculatorProvider>(context, listen: false).setvalue('='),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(242, 0, 0, 0),
            borderRadius: BorderRadius.circular(50)),
        height: 130,
        width: screenwidth * 0.17,
        child: Center(
          child: Text(
            '=',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
