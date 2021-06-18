import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nfts/views/theme/colors.dart';

class AppTheme {
  static ThemeData get themeData {
    return ThemeData(
      primaryColor: AppColors.royalBlue,
      //brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0.0,
        //systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
      ),
      scaffoldBackgroundColor: AppColors.grey,
    );
  }
}
