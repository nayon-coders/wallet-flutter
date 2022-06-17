import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/View/home-screen/home-screen.dart';
import 'package:project_1/utility/color.dart';
import 'package:project_1/widgets/button.dart';
import 'package:project_1/widgets/text.dart';
import 'package:sizer/sizer.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //password show and hide
  bool _passwordVisible = false;

  //form controller
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();
  @override
  void initState() {
    _passwordVisible = false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 17.h),
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Column(
                    children: [
                      Image.asset("assets/image/logo.png",
                        height: 80,
                        width: 80,
                      ),
                      Text("Company name",
                        style: TextStyle(
                            color: appColors.gray,
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ),
              ), 
              
             Container(
               margin: EdgeInsets.only(top: 30),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   MediumText(text: "Ingresar", size: 17.sp,),
                   const SizedBox(height: 10,),
                   Text(
                     "Hola! Ingrese sus credenciales para acceder",
                     style: TextStyle(
                         color: appColors.gray,
                         fontSize: 11.sp,
                         fontWeight: FontWeight.w400
                     ),
                   ),
                   const SizedBox(height: 10,),

                   //////////////  Login Form /////////////////
                   Form(
                     child: Column(
                       children: [
                         TextField(
                            controller: _email,
                           decoration: InputDecoration(
                             label: Text("Email", style: TextStyle(color: appColors.mainColor,fontSize: 12.sp),)
                           ),
                         ),
                         const SizedBox(height: 5,),
                         TextField(
                           controller: _pass,
                           obscureText: !_passwordVisible,
                           decoration: InputDecoration(
                               label: Text("Contraseña", style: TextStyle(color: appColors.mainColor, fontSize: 12.sp),),
                             suffixIcon: IconButton(
                               icon: Icon(
                                 // Based on passwordVisible state choose the icon
                                 _passwordVisible
                                     ? Icons.visibility
                                     : Icons.visibility_off,
                                 color: appColors.gray,
                               ),
                               onPressed: () {
                                 // Update the state i.e. toogle the state of passwordVisible variable
                                 setState(() {
                                   _passwordVisible = !_passwordVisible;
                                 });
                               },
                             ),
                           ),
                         ),
                         const SizedBox(height: 20,),

                         AppButton(
                             text: "Sign In",
                             function: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                             }
                         )
                       ],
                     ),
                   ),



                 ],
               ),
             )

            ],
            ),
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: (){
                  return null;
                },
                child: Text("No posee cuenta?",
                  style: TextStyle(
                    color: appColors.gray,
                    fontSize: 10.sp,
                  ),
                )
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
}
