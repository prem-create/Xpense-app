import 'package:flutter/material.dart';
import 'package:xpense_flutter_app/utils/colors.dart';

ButtonStyle borderedButtonStyle = ButtonStyle(
  elevation: WidgetStateProperty.all(0),
  backgroundColor: WidgetStateProperty.all(Colors.white),
  shape: WidgetStateProperty.all(
    RoundedRectangleBorder(
      side: BorderSide(color: AppColors.primary),
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
