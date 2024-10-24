import 'package:flutter/material.dart';

import '../constants/sizes.dart';
import '../constants/color_grid.dart';

class DTextField extends StatelessWidget {
  final TextEditingController controller;
  final IconData icon;
  final String hintText;
  final TextInputType textInputType;
  final bool? hasBorder;
  final double borderRadius;
  final Color borderColor;
  final Color borderShadowColor;
  final Color fillColor;

  const DTextField({
    super.key,
    required this.controller,
    this.textInputType = TextInputType.text, //Default gap of 10.0
    required this.icon,
    required this.hintText, //default set to vertical,
    this.hasBorder = true,
    this.borderRadius = dRoundBorderRadius,
    bool obscureText = false,
    this.fillColor = tBackgrounDark,
    this.borderColor = tWhite,
    this.borderShadowColor = Colors.blue,
    // required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: borderShadowColor,
            blurRadius: 8,
            spreadRadius: 2,
          )
        ],
      ),
      child: TextFormField(
        controller: controller,
        cursorColor: tWhite,
        style: const TextStyle(color: tWhite),
        keyboardType: textInputType,
        decoration: InputDecoration(
            fillColor: fillColor,
            filled: true,
            prefixIcon: Icon(
              icon,
              color: tWhite,
            ),
            contentPadding: const EdgeInsets.all(dPadding),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: (hasBorder != null)
                    ? BorderSide(color: borderColor)
                    : BorderSide.none),
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white54)
            
            
            ),
      ),
    );
  }
}
