import 'package:flutter/material.dart';
import 'package:promilo/resources/constants/colors.dart';
import 'package:promilo/resources/strings/login_string.dart';

class Remember extends StatelessWidget {
  const Remember({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
              children: [
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: AppColors.textcolor),
                      borderRadius: BorderRadius.circular(3)),
                  width: 20,
                ), const SizedBox(width: 5,),
                Text(LoginString.remember),
                

              ],
            );
  }
}