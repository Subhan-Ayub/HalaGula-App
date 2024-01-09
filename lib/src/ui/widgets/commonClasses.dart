import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FillButton extends StatelessWidget {
  final color;
  final width;
  final child;
  final onTap;

  FillButton({super.key, required this.color, this.width, this.onTap, this.child});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
              width: width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
              color: color,
                borderRadius: BorderRadius.circular(10)
              ),
              child: child,
            ),
    );
  }
}