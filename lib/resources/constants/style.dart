import 'package:flutter/material.dart';

class Apptext {
  static TextStyle get smallDark => const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w800,
      //  color: AppColors.whiteColor,

      overflow: TextOverflow.ellipsis);

  static TextStyle get mediumDark => const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w800,
      //  color: AppColors.whiteColor,

      overflow: TextOverflow.ellipsis);

  static TextStyle get label => const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color.fromARGB(255, 17, 37, 71),
      overflow: TextOverflow.ellipsis);

      
  static TextStyle get secondlabel => const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w800,
      color: Color.fromARGB(255, 50, 139, 203),
      overflow: TextOverflow.ellipsis);
}
