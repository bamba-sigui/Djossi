import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class AppLoader {
  static const circularProgressIndicator = Center(
    child: CircularProgressIndicator(
        strokeWidth: 8, backgroundColor: AppColor.kSecondaryColor),
  );
}
