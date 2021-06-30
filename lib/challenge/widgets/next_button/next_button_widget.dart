import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:DevQuiz/core/core.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final Color overlayColor;

  final VoidCallback onTap;

  const NextButtonWidget({
    Key? key,
    required this.label,
    required this.backgroundColor,
    required this.fontColor,
    required this.borderColor,
    required this.overlayColor,
    required this.onTap,
  }) : super(key: key);

  NextButtonWidget.green({
    required String label,
    required VoidCallback onTap,
  })   : this.backgroundColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.darkGreen,
        this.overlayColor = AppColors.green,
        this.onTap = onTap,
        this.label = label;

  NextButtonWidget.white({
    required String label,
    required VoidCallback onTap,
  })   : this.backgroundColor = AppColors.white,
        this.fontColor = AppColors.grey,
        this.borderColor = AppColors.grey,
        this.overlayColor = AppColors.lightGrey,
        this.onTap = onTap,
        this.label = label;

  NextButtonWidget.purple({
    required String label,
    required VoidCallback onTap,
  })   : this.backgroundColor = AppColors.purple,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.purple,
        this.overlayColor = AppColors.purple,
        this.onTap = onTap,
        this.label = label;

  NextButtonWidget.transparent({
    required String label,
    required VoidCallback onTap,
  })   : this.backgroundColor = Colors.transparent,
        this.fontColor = AppColors.grey,
        this.borderColor = Colors.transparent,
        this.overlayColor = Colors.transparent,
        this.onTap = onTap,
        this.label = label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          overlayColor: MaterialStateProperty.all(overlayColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: borderColor)),
          ),
        ),
        onPressed: onTap,
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
