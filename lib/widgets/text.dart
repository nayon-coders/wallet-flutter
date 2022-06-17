import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/utility/color.dart';
import 'package:sizer/sizer.dart';

class MediumText extends StatelessWidget {
  String text;
  double? size;
  Color? color;
  MediumText({required this.text, this.size = 10, this.color = appColors.black});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: size?.sp,
          color: color
      ),
    );
  }
}
