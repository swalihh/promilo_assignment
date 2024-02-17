import 'package:flutter/material.dart';
import 'package:promilo/resources/constants/colors.dart';
import 'package:promilo/resources/constants/style.dart';
import 'package:promilo/resources/strings/homestring.dart';
import 'package:promilo/resources/widgets/auther_circle.dart';
import 'package:promilo/resources/widgets/trending_circular_widget.dart';

class TrendingScreen extends StatelessWidget {
  const TrendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return   Container(
            height: screenSize.height * 0.2,
            width: screenSize.width-50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border:
                    Border.all(width: 2, color: AppColors.containerlinecolor)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          const CircularAvatarWidget(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                HomeString.authertitle,
                                style: Apptext.label2,
                                

                              ),
                              Text(HomeString.auther)
                            ],
                          ),
                        ],
                      )),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  Container(
                    height: 2,
                    width: screenSize.width,
                    color: AppColors.containerlinecolor,
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  const Expanded(
                      flex: 2,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            child: TrendingCircularAvatarWidget(
                                imagePath: 'assets/images/pop2.jpg'),
                          ),
                          Positioned(
                            left: 30,
                            child: TrendingCircularAvatarWidget(
                                imagePath: 'assets/images/pop1.jpg'),
                          ),
                          Positioned(
                            left: 60,
                            child: TrendingCircularAvatarWidget(
                                imagePath: 'assets/images/pop3.jpg'),
                          ),
                          Positioned(
                            left: 95,
                            child: TrendingCircularAvatarWidget(
                                imagePath: 'assets/images/pop2.jpg'),
                          ),
                           Positioned(
                            left: 130,
                            child: TrendingCircularAvatarWidget(
                                imagePath: 'assets/images/pop2.jpg'),
                          ),
                        ],
                      )),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: screenSize.height * 0.08,
                        width: screenSize.width * 0.2,
                        decoration: BoxDecoration(
                            color: AppColors.labelcolor,
                            borderRadius: BorderRadius.circular(5)),
                            child: Center(child: Text(HomeString.more,style: Apptext.buttonlabel0,)),
                      )
                    ],
                  ))
                ],
              ),
            ),
          );
  }
}