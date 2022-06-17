import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/utility/color.dart';
import 'package:project_1/widgets/button.dart';
import 'package:project_1/widgets/text.dart';
import 'package:sizer/sizer.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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

      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MediumText(text: "Mi Perfil", size: 17.sp,),
            const SizedBox(height: 30,),
            profileInfoList("Email", "usuario1@gmail.com"),
            profileInfoList("Nombre", "Federico"),
            profileInfoList("Apellido", "Gomez"),
            profileInfoList("Sexo", "Masculino"),
            profileInfoList("Dirección", "Address 1, New York, United States"),
            const SizedBox(height: 20,),
            AppButton(
                text: "Salir",
                function: (){
                  //
                }
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Tiene alguna duda?",
              style: TextStyle(
                color: appColors.gray,
                fontSize: 12.sp,
              ),
            ),
            TextButton(
                onPressed: (){
                  return null;
                },
                child: Text("Contáctenos",
                  style: TextStyle(
                    color: appColors.mainColor,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,

                  ),
                )
            )
          ],
        ),
      ),
    );
  }
  Widget profileInfoList(String title, String text){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
          style: TextStyle(
              color: appColors.mainColor,
              fontSize: 14.sp,
            fontWeight: FontWeight.w600
          ),
        ),
        const SizedBox(height: 10,),
        Text(text,
          style: TextStyle(
            color: appColors.black,
            fontSize: 13.sp
          ),
        ),
        const SizedBox(height: 10,),
        Divider(height: 5,color: appColors.gray200,),
        const SizedBox(height: 20,),

      ],
    );
  }
}
