import 'package:flutter/material.dart';
import 'package:promilo/resources/constants/style.dart';
import 'package:promilo/resources/strings/login_string.dart';
import 'package:promilo/resources/widgets/remember_widget.dart';

class ForgetpasswordWidget extends StatelessWidget {
  const ForgetpasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Remember(),
        Text(
          LoginString.passwordlabeltwo,
          style: Apptext.secondlabel,
        ),
      ],
    );
  }
}
