// ignore: file_names
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../utils/routes/appRoutes.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 1),
      () {
        Get.offAndToNamed(Routes.wellcomescreen);
      },
    );

    return 
       Center(
        child: Image.asset(
          'assets/images/halagulalogo.png',
          fit: BoxFit.fill,
        ),
       );
  }
}