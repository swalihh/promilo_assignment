import 'package:flutter/material.dart';
import 'package:promilo/resources/strings/login_string.dart';

class TermsWidget extends StatelessWidget {
  const TermsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
  text:  TextSpan(
    
    children: <TextSpan>[
      TextSpan(
        text: LoginString.conditiontext0,
        style: const TextStyle(
          fontWeight: FontWeight.normal, 
        ),
      ),
      TextSpan(
        text: LoginString.conditiontext2,
        style: const TextStyle(
          fontWeight: FontWeight.w700, 
        ),
      ),
    ],
  ),
);


  }
}