import 'package:flutter/material.dart';

class RTTextStyle {
  static headingH4({Color? color}) => TextStyle(fontFamily: 'Lora', fontSize: 28.0, fontWeight: FontWeight.bold, color: color);
  static headingH6({Color? color}) => TextStyle(fontFamily: 'Lora', fontSize: 18.0, fontWeight: FontWeight.bold, color: color);
  static subtitle1({Color? color}) => TextStyle(fontFamily: 'Lora', fontSize: 16.0, fontWeight: FontWeight.w500, color: color);
  static button({Color? color}) => TextStyle(fontFamily: 'OpenSans', fontSize: 14.0, fontWeight: FontWeight.w600, color: color);
  static caption({Color? color}) => TextStyle(fontFamily: 'OpenSans', fontSize: 12.0, fontWeight: FontWeight.w400, color: color);
  static overline({Color? color}) => TextStyle(fontFamily: 'OpenSans', fontSize: 12.0, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic, color: color);
  static body1({Color? color}) => TextStyle(fontFamily: 'OpenSans', fontSize: 16.0, fontWeight: FontWeight.w400, color: color);
  static body2({Color? color}) => TextStyle(fontFamily: 'OpenSans', fontSize: 14.0, fontWeight: FontWeight.w400, color: color);
}
