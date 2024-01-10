import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halagula_app/src/controllers/signupController.dart';

import '../../utils/uidata/style.dart';

class FillButton extends StatelessWidget {
  final color;
  final width;
  final child;
  final ontap;

  FillButton(
      {super.key, required this.color, this.width, this.child, this.ontap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: child,
      ),
    );
  }
}

class ThirdpartyLogin extends StatelessWidget {
  const ThirdpartyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'OR CONTINUE WITH',
          style: UIDataDecoration.subHeadingStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 120, child: Image.asset('assets/images/fblogo.png')),
            SizedBox(height: 80, child: Image.asset('assets/images/google.png'))
          ],
        ),
        FillButton(
          color: Colors.black,
          width: Get.width / 1.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.apple,
                size: 40,
                color: Colors.white,
              ),
              Text(
                'Sign in with Apple',
                style: UIDataDecoration.subHeadingStyle,
              )
            ],
          ).paddingSymmetric(vertical: Get.height * 0.007),
        )
      ],
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  // ignore: prefer_typing_uninitialized_variables
  final width;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final ontap;
  final obscure;
  final ImageProvider<Object>? prefixIconImage;

  CustomTextField(
      {super.key,
      this.width,
      required this.controller,
      required this.hintText,
      this.obscure,
      this.prefixIcon,
      this.suffixIcon,
      this.ontap,
      this.prefixIconImage});

  final SignUpController _ = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          controller: controller,
          // keyboardType: TextInputType.text,
          // obscureText: obscure,
          decoration: InputDecoration(
            prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
            suffixIcon: suffixIcon != null
                ? IconButton(onPressed: ontap, icon: Icon(suffixIcon))
                : null,
            hintText: hintText,
            contentPadding: EdgeInsets.symmetric(
                vertical: Get.height * 0.028, horizontal: Get.width * 0.04),
            fillColor: Colors.white,
            filled: true,
            hintStyle:
                const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white, width: 1.0),
            ),
          ),
        ));
  }
}
