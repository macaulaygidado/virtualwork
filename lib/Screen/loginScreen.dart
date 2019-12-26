import 'package:VirtualWork/style/AppColor.dart';
import 'package:VirtualWork/style/AppFontSizes.dart';
import 'package:VirtualWork/style/AppText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkBg,
   body: SingleChildScrollView(
     child: Column(
       children: <Widget>[
         Center(
           child: Padding(
             padding: const EdgeInsets.only(top: 40.0),
             child: Text(AppText.string1,
             style: GoogleFonts.b612Mono(
               fontSize: AppFontSizes.larger,
               fontWeight: FontWeight.bold
               //textStyle:
             ),),
           ),
         ),
         Center(
           child: Padding(
             padding: const EdgeInsets.only(top: 10.0, left: 5, right: 5),
             child: Text(AppText.string2,
             textAlign: TextAlign.center,
             style: GoogleFonts.b612Mono(
               fontSize: AppFontSizes.small,
               fontWeight: FontWeight.bold
               //textStyle:
             ),),
           ),
         ),
       Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Center(
             child: Padding(
               padding: const EdgeInsets.only(top: 200.0, left: 6.0, right: 8.0),
               child: Container(
                 color: Colors.white,
                 child: TextField(
                   style: GoogleFonts.alike(
                     textStyle: TextStyle(
                       color: AppColor.white
                     )
                   ),
                   controller: emailController, //For collecting data
                   decoration: InputDecoration(
                     fillColor: Colors.white,
                     border: OutlineInputBorder(),
                     labelText: 'Email',
                     hintStyle: GoogleFonts.alikeAngular(),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.white),
                       borderRadius: BorderRadius.circular(25.7),
                     ),
                     enabledBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.white),
                       borderRadius: BorderRadius.circular(25.7),
                     ),
                   ),
                 ),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 20.0, bottom: 8.0),
             child: Container(
               width: 300,
               child: MaterialButton(
                 elevation: 6.0,
                 shape: BeveledRectangleBorder(
                   borderRadius: BorderRadius.all(Radius.circular(25.0)),
                 ),
                 onPressed: () {

                 },
                 minWidth: double.infinity,
                 height: 50,
                 child: Text(
                   'Proceed'.toUpperCase(),
                 ),
                 color: AppColor.thirdColor,
                 textColor: Colors.white,
               ),
             ),
           )
         ],
       )
       ],
     ),
   )
    );
  }
}
