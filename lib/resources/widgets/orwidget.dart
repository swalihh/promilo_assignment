import 'package:flutter/material.dart';
import 'package:promilo/resources/constants/colors.dart';
import 'package:promilo/resources/constants/style.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 2,
          width: screensize.width / 2 - 30,
          color: AppColors.containerlinecolor,
        ),
        Text(
          'or',
          style: Apptext.label,
        ),
        Container(
          height: 2,
          width: screensize.width / 2 - 30,
          color: AppColors.containerlinecolor,
        ),
      ],
    );
  }
}
