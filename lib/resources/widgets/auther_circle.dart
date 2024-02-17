import 'package:flutter/material.dart';
import 'package:promilo/resources/constants/colors.dart';

class CircularAvatarWidget extends StatelessWidget {


  const   CircularAvatarWidget({super.key, 
 
  });

  @override
  Widget build(BuildContext context) {
    double avatarSize = MediaQuery.of(context).size.width * 0.2;


   
    return Container(
      width: avatarSize,
      height: avatarSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color:AppColors.labelcolor, width: 2),
       
      ),
      child: const Icon(Icons.edit),
    );
  }
}
