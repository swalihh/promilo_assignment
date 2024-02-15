import 'package:flutter/material.dart';

class Apptext{
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
}