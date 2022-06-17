import 'package:flutter/material.dart';
import 'package:project_1/utility/color.dart';
import 'package:sizer/sizer.dart';


class TransaccinesScreen extends StatefulWidget {
  const TransaccinesScreen({Key? key}) : super(key: key);

  @override
  State<TransaccinesScreen> createState() => _TransaccinesScreenState();
}

class _TransaccinesScreenState extends State<TransaccinesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Transacciones", style: TextStyle(
          color: appColors.black,
          fontSize: 15.sp
        ),),
        backgroundColor: appColors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
              Icons.arrow_back_ios,
              color: appColors.mainColor
          ),),
      ),

      body: ListView(
        children: [
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
          TransaccinesListItem("21-02-2022", "\u00241300.50"),
        ],
      ),

    );
  }
  Widget TransaccinesListItem(String date, String amount){
    return Padding(
      padding: const EdgeInsets.only(left: 80, right: 80, bottom: 35,),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(date,
            style: TextStyle(
                color: appColors.gray,
                fontSize: 11.sp,
                fontWeight: FontWeight.bold
            ),
          ),
          Text(amount,
            style: TextStyle(
                color: appColors.gray,
                fontSize: 11.sp,
                fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}
