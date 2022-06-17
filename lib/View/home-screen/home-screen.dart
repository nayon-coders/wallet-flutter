import 'package:flutter/material.dart';
import 'package:project_1/View/profile-screen/profile-screen.dart';
import 'package:project_1/utility/color.dart';
import 'package:project_1/widgets/button.dart';
import 'package:project_1/widgets/text.dart';
import 'package:sizer/sizer.dart';

import '../transacciones-screen/transacciones-screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [

            //app to bar
            Container(
              margin: EdgeInsets.only(top: 8.h,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MediumText(text: "Cuenta Principal", size: 15.sp,),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
                    },
                    icon: Icon(
                      Icons.account_circle,
                      size: 25.sp,
                      color: appColors.mainColor,
                    ),

                  )
                ],
              ),
            ),

            const SizedBox(height: 30,),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 20, bottom: 20),
              decoration: BoxDecoration(
                color: Color(0xFFF2F3F4), 
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
               children: [
                 MediumText(text: "Balance Total", size: 9.sp,),
                 const SizedBox(height: 30,),
                 //amount
                 MediumText(text: "\u00242,903.13", size: 25.sp,),
               ],
              ),
            ),

            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[
                Container(
                width: MediaQuery.of(context).size.width/1.8,
                height: 3,
                decoration: BoxDecoration(
                  color: appColors.gray200,
                ),
              ),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  height: 3,
                  decoration: BoxDecoration(
                    color: appColors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            AppButton(
                text: "Realizar Pago",
                function: (){
                  //click
                  showAlertDialog(context);

                }
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (container)=>TransaccinesScreen()));
                    },
                    child: Text("ver todas",
                      style: TextStyle(
                        color: appColors.mainColor,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.bold,

                      ),
                    )
                ),
                Column(
                  children: [
                    TextButton(
                        onPressed: (){
                          return null;
                        },
                        child: Text("Transacciones recientes",
                          style: TextStyle(
                            color: appColors.black,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold,

                          ),
                        )
                    ),

                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[
                Container(
                  width: MediaQuery.of(context).size.width/1.8,
                  height: 3,
                  decoration: BoxDecoration(
                    color: appColors.gray200,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/4,
                  height: 3,
                  decoration: BoxDecoration(
                    color: appColors.black,
                  ),
                ),
              ],
            ),


            ///show list
            Expanded(
                child: ListView(
                  children: [
                    homeListItem("21-02-2022", "\u00241300.50"),
                    homeListItem("21-02-2022", "\u00241300.50"),
                    homeListItem("21-02-2022", "\u00241300.50"),
                    homeListItem("21-02-2022", "\u00241300.50"),
                    homeListItem("21-02-2022", "\u00241300.50"),
                    homeListItem("21-02-2022", "\u00241300.50"),
                    homeListItem("21-02-2022", "\u00241300.50"),
                    homeListItem("21-02-2022", "\u00241300.50"),
                    homeListItem("21-02-2022", "\u00241300.50"),
                    homeListItem("21-02-2022", "\u00241300.50"),
                    homeListItem("21-02-2022", "\u00241300.50"),
                    homeListItem("21-02-2022", "\u00241300.50"),
                    homeListItem("21-02-2022", "\u00241300.50"),
                    homeListItem("21-02-2022", "\u00241300.50"),
                    homeListItem("21-02-2022", "\u00241300.50"),
                    homeListItem("21-02-2022", "\u00241300.50"),
                    homeListItem("21-02-2022", "\u00241300.50"),
                    homeListItem("21-02-2022", "\u00241300.50"),
                    homeListItem("21-02-2022", "\u00241300.50"),
                    homeListItem("21-02-2022", "\u00241300.50"),


                  ],
                )
            ),

          ],
        ),
      ),
    );
  }


  Widget homeListItem(String date, String amount){
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, bottom: 35,),
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


     showAlertDialog(BuildContext context) {
      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        content: Container(
          height: 180,
          child: Column(
            children: [
              MediumText(text: "Ingrese importe a pagar", size: 12.sp,),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Import",
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: appColors.black, width: 3.0),
                      borderRadius: BorderRadius.circular(5.0),
                    )
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              AppButton(
                  text: "Seleccionar medio de pago",
                  function: (){
                    Navigator.pop(context);
                    _showBottomSheet(context);
                  }
              )
            ],
          ),
        ),
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }



    //show bottom sheets
Future _showBottomSheet(BuildContext context){
    return showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        elevation: 10,
        context: context,
        builder: (context) {
          return StatefulBuilder(
              builder: (context, setState) {
                return SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(top: 30, bottom: 40, left: 20, right: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MediumText(text: "Agregue su información de pago", size: 15,),
                          const SizedBox(height: 20,),
                          Container(
                            padding: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 30),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 3, color: appColors.black)
                            ),
                            child: MediumText(text: "CREDIT CARD", size: 12,),
                          ),
                          const SizedBox(height: 20,),
                          MediumText(text: "Información de tarjeta", size: 15,),
                          const SizedBox(height: 20,),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Número de tarjeta",
                                contentPadding: EdgeInsets.only(left: 20, right: 20),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(color: appColors.black, width: 3.0),
                                  borderRadius: BorderRadius.circular(5.0),
                                )
                            ),
                          ),
                          const SizedBox(height: 10,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Container(
                               width: MediaQuery.of(context).size.width / 2.3,
                               child: TextField(
                                 decoration: InputDecoration(
                                     hintText: "MM/YY",
                                     contentPadding: EdgeInsets.only(left: 20, right: 20),
                                     border: OutlineInputBorder(
                                       borderSide: const BorderSide(color: appColors.black, width: 3.0),
                                       borderRadius: BorderRadius.circular(5.0),
                                     )
                                 ),
                               ),
                             ),
                             Container(
                               width: MediaQuery.of(context).size.width / 2.3,
                               child: TextField(
                                 decoration: InputDecoration(
                                     hintText: "MM/YY",
                                     contentPadding: EdgeInsets.only(left: 20, right: 20),
                                     border: OutlineInputBorder(
                                       borderSide: const BorderSide(color: appColors.black, width: 3.0),
                                       borderRadius: BorderRadius.circular(5.0),
                                     )
                                 ),
                               ),
                             ),
                           ],
                         ),
                          const SizedBox(height: 20,),
                          MediumText(text: "Dirección de facturación", size: 15,),
                          const SizedBox(height: 20,),
                          TextField(
                            decoration: InputDecoration(
                                hintText: "Pais",
                                contentPadding: EdgeInsets.only(left: 20, right: 20),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(color: appColors.black, width: 3.0),
                                  borderRadius: BorderRadius.circular(5.0),
                                )
                            ),
                          ),
                          const SizedBox(height: 10,),
                          TextField(
                            decoration: InputDecoration(
                                hintText: "ZIP",
                                contentPadding: EdgeInsets.only(left: 20, right: 20),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(color: appColors.black, width: 3.0),
                                  borderRadius: BorderRadius.circular(5.0),
                                )
                            ),
                          ),
                          const SizedBox(height: 20,),
                          AppButton(
                              text: "Pagar \u00241,500,92",
                              function: (){
                                Navigator.pop(context);
                                _showBottomSheet(context);
                              }
                          )
                            ],
                          )
                    ),
                  );
              });
        });
}


}


