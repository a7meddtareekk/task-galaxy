import 'package:flutter/material.dart';

import 'app-colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: ConstantsColors.scaffoldColor[300],
      textTheme: const TextTheme(

          ///for titles
          headline5: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,),
            //  color: ConstantsColors.textColor),

          /// for Small Text
          bodyText1: TextStyle(
              fontSize: 15,
             // color: ConstantsColors.textColor,
              fontWeight: FontWeight.w400)));
}
