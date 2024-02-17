import 'package:flutter/material.dart';
import 'package:promilo/resources/constants/style.dart';
import 'package:promilo/resources/strings/homestring.dart';

class PopularContainerWidget extends StatelessWidget {
    final String imageUrl;
  const PopularContainerWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Container(
      height: 100,
      width: screenSize.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: screenSize.width, // Cover half of the screen
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(
                HomeString.popular,
                style: Apptext.buttonlabel,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
