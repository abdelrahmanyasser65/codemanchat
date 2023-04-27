

import 'dart:ui';

import 'package:sizer/sizer.dart';

class FontWightManager{
  static const FontWeight light=FontWeight.w300;
  static const FontWeight regular=FontWeight.w400;
  static const FontWeight medium=FontWeight.w500;
  static const FontWeight semiBold=FontWeight.w600;
  static const FontWeight bold=FontWeight.w700;
}

abstract class TextStyles{
  static TextStyle textStyle14=TextStyle(
    fontWeight: FontWightManager.semiBold,
    fontSize: 12.sp,
  );
  static TextStyle textStyle16=TextStyle(
    fontWeight: FontWightManager.semiBold,
    fontSize: 14.sp,
  );
  static TextStyle textStyle18=TextStyle(
    fontWeight: FontWightManager.semiBold,
    fontSize: 16.sp,
  );
  static TextStyle textStyle20=TextStyle(
    fontWeight: FontWightManager.semiBold,
    fontSize: 18.sp,
  );
  static TextStyle textStyle30=TextStyle(
    fontWeight: FontWightManager.semiBold,
    fontSize: 25.sp,
  );
}