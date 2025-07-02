
import 'package:firstpro/screen/Bmi.dart';
import 'package:firstpro/screen/Gst%20calculator.dart';
import 'package:firstpro/screen/calculator.dart';
import 'package:flutter/material.dart';

import 'blur.2.dart';


void main()
{
  runApp(qwe());
}


class qwe extends StatelessWidget {
  const qwe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:bmi(),
    );
  }
}
