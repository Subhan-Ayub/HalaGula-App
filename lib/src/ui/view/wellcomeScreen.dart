import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:halagula_app/src/ui/widgets/commonClasses.dart';
import 'package:halagula_app/src/utils/uidata/style.dart';

class WellcomeScreen extends StatelessWidget {
  const WellcomeScreen({super.key});

  @override
  Widget build(context) {
    return
    Scaffold(
      backgroundColor: Color(0xff292929),
    body: Center(
      child: Column(children: [
        Image.asset(
          'assets/images/halagulalogo.png',
          fit: BoxFit.fill,
        ),

        Text('Welcome to Hala Gula', style: UIDataDecoration.headingStyle
        ,textAlign: TextAlign.center,),

          
         Text('Pakistan’s No. 1 \nOnline Booking Agency', style: UIDataDecoration.subHeadingStyle,
            textAlign: TextAlign.center,
          ),
    

        FillButton(
          // width: Get.width,
          color: Colors.red,
          child: Text('SIGN IN', style: TextStyle(fontSize: Get.width*0.07, fontWeight: FontWeight.w500)).paddingSymmetric(vertical: Get.height*0.007),
        ),

        FillButton(
          color: Colors.white,
          // width: Get.width,
          // child: Text('SIGN UP', sty),
          ),


      ]).marginSymmetric(horizontal: Get.width*0.07),
    )
    );
  }
}
