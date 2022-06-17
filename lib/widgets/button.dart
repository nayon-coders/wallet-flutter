import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/utility/color.dart';
import 'package:sizer/sizer.dart';

class AppButton extends StatelessWidget {
  String text;
  Function function;
  AppButton({Key? key, required this.text, required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          onPressed: (){
            //login button action
            function();
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(appColors.mainColor),
              padding: MaterialStateProperty.all(EdgeInsets.only(top: 15, bottom: 15))
          ),
          child: Text(text,
            style: TextStyle(
              color: appColors.white,
              fontSize: 11.sp,
            ),
          )
      ),
    );
  }
}
