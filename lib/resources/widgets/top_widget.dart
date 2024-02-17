import 'package:flutter/material.dart';
import 'package:promilo/resources/constants/colors.dart';
import 'package:promilo/resources/constants/style.dart';

class ImageStackWidget extends StatelessWidget {
  final double height;
  final double width;
  final int index;

  const ImageStackWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/pop3.jpg'),
            ),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(

            width: 100, 
            height: 70, 
            decoration: const BoxDecoration(
              color: AppColors.appbarColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                index.toString(), 
                style: Apptext.bigterms,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
