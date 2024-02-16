import 'package:flutter/material.dart';
import 'package:promilo/resources/constants/colors.dart';

class SocialMedias extends StatelessWidget {
  const SocialMedias({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          color: AppColors.bagroundWhite,
          height: screensize.height * 0.040,
          width: screensize.width * 0.110,
          child: const Image(image: AssetImage('assets/images/wts2.png')),
        ),
        Container(
          color: AppColors.bagroundWhite,
          height: screensize.height * 0.040,
          width: screensize.width * 0.110,
          child: const Image(image: AssetImage('assets/images/wts3.png')),
        ),
        Container(
          color: AppColors.bagroundWhite,
          height: screensize.height * 0.040,
          width: screensize.width * 0.110,
          child: const Image(image: AssetImage('assets/images/wts5.png')),
        ),
        Container(
          color: AppColors.bagroundWhite,
          height: screensize.height * 0.040,
          width: screensize.width * 0.110,
          child: const Image(image: AssetImage('assets/images/wts4.png')),
        ),
        Container(
          color: AppColors.bagroundWhite,
          height: screensize.height * 0.040,
          width: screensize.width * 0.110,
          child: const Image(image: AssetImage('assets/images/wts1.png')),
        ),
      ],
    );
  }
}
