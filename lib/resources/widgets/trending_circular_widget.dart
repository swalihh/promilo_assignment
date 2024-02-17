import 'package:flutter/material.dart';
// import 'package:promilo/resources/constants/colors.dart';

class TrendingCircularAvatarWidget extends StatelessWidget {
  final String imagePath;
  final bool isNetworkImage;

  const   TrendingCircularAvatarWidget({super.key, 
    required this.imagePath,
    this.isNetworkImage = false,
  });

  @override
  Widget build(BuildContext context) {
    double avatarSize = MediaQuery.of(context).size.width * 0.2-32;

    ImageProvider<Object> imageProvider;

    if (isNetworkImage) {
      imageProvider = NetworkImage(imagePath);
    } else {
      imageProvider = AssetImage(imagePath);
    }

    return Container(
      width: avatarSize,
      height: avatarSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        // border: Border.all(color: AppColors.labelcolor, width: 2),
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover ,
        ),
      ),
    );
  }
}
