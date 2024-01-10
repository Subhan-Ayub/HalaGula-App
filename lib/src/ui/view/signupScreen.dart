import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:halagula_app/src/controllers/signupController.dart';
import 'package:halagula_app/src/ui/widgets/commonClasses.dart';
import 'package:halagula_app/src/utils/routes/appRoutes.dart';
import 'package:halagula_app/src/utils/uidata/style.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../utils/uidata/color.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final SignUpController _ = Get.find<SignUpController>();
  RxBool istrue = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIDataColors.commonColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create Account',
              style: UIDataDecoration.headingStyle,
            ).paddingOnly(top: 10),
            Text(
              'Enter your Name, Email Phone no and Password to sign up.',
              style: UIDataDecoration.subHeadingStyle,
            ).paddingOnly(bottom: 20),
            CustomTextField(
              controller: _.fullname,
              hintText: 'Full Name',
            ),
            CustomTextField(
              controller: _.email,
              hintText: 'Email Adress',
            ).paddingSymmetric(vertical: 30),
            // CustomTextField(
            //   controller: _.phonenumber,
            //   hintText: 'Phone Number',
            // ),

            Obx(
              () => Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: InternationalPhoneNumberInput(
                  // onInputChanged: _.onPhoneNumberChanged,
                  onInputChanged: (PhoneNumber number) {
                    // Handle phone number changes
                    print(_.phoneNumber.value);
                    if (_.phonenumber.text.length == 10) {
                      _.phoneNumber.value = number;
                      istrue.value = true;
                      print(_.phoneNumber.value);
                    } else {
                      istrue.value = false;
                    }
                    print('${istrue.value} istrue');
                  },
                  inputDecoration: const InputDecoration(
                      hintText: 'Enter phone number',
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                  selectorConfig: const SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      showFlags: true,
                      setSelectorButtonAsPrefixIcon: true,
                      leadingPadding: Checkbox.width),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: const TextStyle(color: Colors.black),
                  initialValue: _.phoneNumber.value,
                  textFieldController: _.phonenumber,
                  formatInput: false,
                  keyboardType: const TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  inputBorder: const OutlineInputBorder(),
                  onInputValidated: (bool value) {
                    // Handle validation
                  },
                  // onSaved: (PhoneNumber? phoneNumber) {
                  //   // Handle saving the phone number
                  // },
                ),
              ),
            ),
            // ignore: unnecessary_null_comparison
            Obx(() => istrue.value
                ? const SizedBox()
                : const Text(
                    'Enter a valid phone number',
                    style: TextStyle(color: Colors.red),
                  ).paddingAll(10)),

            // ElevatedButton(
            //   onPressed: () {
            //     if (_.validatePhoneNumber()) {
            //       // Do something with the validated phone number
            //       print('Valid phone number: ${_.phoneNumber.value}');
            //     }
            //   },
            //   child: Text('Submit'),
            // ),

            Obx(
              () => CustomTextField(
                ontap: () {
                  _.passwordVisibility.toggle();
                },
                controller: _.password,
                obscure: !_.passwordVisibility.value,
                hintText: 'Password',
                suffixIcon: _.passwordVisibility.value
                    ? Icons.remove_red_eye
                    : Icons.remove_red_eye_outlined,
              ).paddingSymmetric(vertical: 30),
            ),

            Obx(
              () => CustomTextField(
                ontap: () {
                  _.confirmPasswordVisibility.toggle();
                },
                controller: _.confirmpassword,
                obscure: !_.confirmPasswordVisibility.value,
                hintText: 'Confirm Password',
                suffixIcon: _.confirmPasswordVisibility.value
                    ? Icons.remove_red_eye
                    : Icons.remove_red_eye_outlined,
              ),
            ),

            FillButton(
              color: Colors.red,
              child: Text(
                'SIGN UP',
                style: TextStyle(
                    fontSize: Get.width * 0.07,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ).paddingSymmetric(vertical: Get.height * 0.007),
            ).paddingSymmetric(vertical: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Already have account?',
                  style: UIDataDecoration.subHeadingStyle,
                ),
                Text(
                  'SIGN IN',
                  style: UIDataDecoration.subHeadingStyle,
                )
              ],
            ),

            const ThirdpartyLogin().paddingOnly(top: 20),
          ],
        ).marginSymmetric(horizontal: Get.width * 0.07),
      ),
    );
  }
}
