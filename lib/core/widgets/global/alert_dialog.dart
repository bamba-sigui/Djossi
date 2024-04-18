import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.onPressed,
  });
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(
        textAlign: TextAlign.center,
        "Déconnexion",
      ),
      titleTextStyle: GoogleFonts.montserrat(
        color: Colors.black,
        fontSize: 20.sp,
        fontWeight: FontWeight.w900,
      ),
      titlePadding: EdgeInsets.only(top: 10.h),
      contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      content: Text(
        textAlign: TextAlign.center,
        'Êtes-vous sûr de vouloir vous déconnecter ?',
      ),
      contentTextStyle: GoogleFonts.montserrat(
        color: Colors.black,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      actionsPadding: EdgeInsets.only(bottom: 10.h),
      actions: <Widget>[
        TextButton(
          onPressed: () => Get.back(),
          child: Text(
            'Annuler',
            style: GoogleFonts.montserrat(
              // color: Colors.blue,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            'Se déconnecter',
            style: GoogleFonts.montserrat(
              // color: Colors.blue,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
