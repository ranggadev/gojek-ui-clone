import 'package:flutter/material.dart';
import 'package:indojek/common/my_colors.dart';

import 'my_font_size.dart';

class MyStyle {
  static TextStyle textButtonBlack = TextStyle(
    color: MyColors.blackText,
    fontSize: MyFontSize.medium2,
    fontWeight: FontWeight.bold
  );

  static TextStyle textButtonWhite = TextStyle(
    color: MyColors.white,
    fontSize: MyFontSize.medium2,
    fontWeight: FontWeight.bold
  );

  static TextStyle textTitleBlack = TextStyle(
    color: MyColors.blackText,
    fontSize: MyFontSize.large2,
    fontWeight: FontWeight.bold
  );

  static TextStyle textParagraphBlack = TextStyle(
    color: MyColors.blackSoftText,
    fontSize: MyFontSize.medium2,
  );
}