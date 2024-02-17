import 'package:flutter/material.dart';
import 'package:promilo/resources/constants/colors.dart';
import 'package:promilo/resources/constants/style.dart';
import 'package:promilo/resources/strings/homestring.dart';
import 'package:promilo/resources/strings/viewstring.dart';
import 'package:promilo/resources/widgets/first.dart';
import 'package:promilo/resources/widgets/viiew_page_indicator.dart';
import 'package:share_plus/share_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MeetupViewPage extends StatefulWidget {
  MeetupViewPage({super.key});
  final ValueNotifier<int> value = ValueNotifier(0);

  @override
  State<MeetupViewPage> createState() => _MeetupViewPageState();
}

class _MeetupViewPageState extends State<MeetupViewPage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          HomeString.describe,
          style: Apptext.label2,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: screenSize.height * 0.33,
                              width: screenSize.width,
                              child: PageView(
                                controller: _pageController,
                                onPageChanged: (value) {
                                  widget.value.value = value;
                                },
                                children: const [
                                  PopularViewContainerWidget(
                                    imageUrl: 'assets/images/pop1.jpg',
                                  ),
                                  PopularViewContainerWidget(
                                    imageUrl: 'assets/images/pop2.jpg',
                                  ),
                                  PopularViewContainerWidget(
                                    imageUrl: 'assets/images/pop3.jpg',
                                  ),
                                ],
                              ),
                            ),
                             const SizedBox(
                        height: 10,
                      ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.download_outlined)),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.bookmark_border_outlined)),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.favorite_border_outlined)),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.check_box_outline_blank_rounded)),
                                IconButton(
                                    onPressed: () {
                                      
                                    },
                                    icon:
                                    const Icon(Icons.star_border_outlined)),
                             GestureDetector(
                              onTap: () {
                                     Share.share('Share Promilo');

                              },
                              child: const Icon(Icons.share)),
                              ],
                            )
                          ],
                        ),
                        Positioned(
                                               
                                             
                          top: 200,
                          bottom: 50,
                          left:150,
                          right: 0,
                          child: ValueListenableBuilder<int>(
                            valueListenable: widget.value,
                            builder: (context, activeIndex, child) {
                              return AnimatedSmoothIndicator(
                                
                                activeIndex: activeIndex,
                                count: 3,
                                effect: const WormEffect(
                                   
                                  activeDotColor:AppColors.bagroundWhite, 
                                  dotWidth: 10,
                                  dotColor: Colors.grey,
                                  dotHeight: 10,
                                  type: WormType.thinUnderground,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const RatingRow(),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        ViewPageString.actor,
                        style: Apptext.secondlabe2,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        ViewPageString.nationality,
                        style: Apptext.label,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.schedule),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            ViewPageString.duration,
                            style: Apptext.label,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.wallet_sharp),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            ViewPageString.totel,
                            style: Apptext.label,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        ViewPageString.about,
                        style: Apptext.secondlabe2,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Card(
                        elevation: 0,
                        color: AppColors.bagroundWhite,
                        child: Text(
                          ViewPageString.details,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            ViewPageString.more,
                            style: Apptext.secondlabe2,
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
