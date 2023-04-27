

import 'dart:ui';

import 'package:sizer/sizer.dart';

class FontWeightManager{
  static const FontWeight light=FontWeight.w300;
  static const FontWeight regular=FontWeight.w400;
  static const FontWeight medium=FontWeight.w500;
  static const FontWeight semiBold=FontWeight.w600;
  static const FontWeight bold=FontWeight.w700;
}

abstract class TextStyles{
  static TextStyle textStyle18=TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeightManager.semiBold
  );
  static TextStyle textStyle20=TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightManager.regular,

  );
  static TextStyle textStyle14=TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeightManager.regular
  );
  static TextStyle textStyle16=TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightManager.medium
  );
  static TextStyle textStyle30=TextStyle(
      fontSize: 25.sp,
      fontWeight: FontWeightManager.bold,
  );
}