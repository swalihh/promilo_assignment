import 'package:flutter/material.dart';
import 'package:promilo/resources/strings/homestring.dart';
import 'package:promilo/resources/widgets/popular.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PopularScreen extends StatefulWidget {
   PopularScreen({super.key});
    final ValueNotifier<int> value = ValueNotifier(0);


  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
    final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
        final Size screenSize = MediaQuery.of(context).size;

    return Column(children: [
      Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            // color: Colors.amber,
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.black)),
            child: Row(
              children: [
                const Icon(Icons.search_rounded, color: Colors.black),
                const SizedBox(width: 10),
                Text(HomeString.search),
                const Expanded(child: SizedBox()),
                const Icon(Icons.mic_none_outlined)
              ],
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.02,
          ),
          SizedBox(
            height: screenSize.height * 0.18,
            width: screenSize.width,
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                widget.value.value = value;
              },
              children: const [
           PopularContainerWidget(imageUrl: 'assets/images/pop1.jpg',),
           PopularContainerWidget(imageUrl: 'assets/images/pop2.jpg',),
           PopularContainerWidget(imageUrl: 'assets/images/pop3.jpg',),
        





               
              ],
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: ValueListenableBuilder<int>(
              valueListenable: widget.value,
              builder: (context, activeIndex, child) {
                return AnimatedSmoothIndicator(
                  activeIndex: activeIndex,
                  count: 3,
                  effect: const WormEffect(
                    activeDotColor: Colors.black,
                    dotHeight: 10,
                    dotWidth: 10,
                    type: WormType.thinUnderground,
                  ),
                );
              },
            ),
          ),
    ],);
  }
}