import 'package:flutter/material.dart';
import 'package:promilo/resources/constants/colors.dart';
import 'package:promilo/resources/constants/style.dart';
import 'package:promilo/resources/strings/homestring.dart';
import 'package:promilo/resources/widgets/popular.dart';
import 'package:promilo/resources/widgets/top_widget.dart';
import 'package:promilo/resources/widgets/trending_page_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  final ValueNotifier<int> value = ValueNotifier(0);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(onPressed: (){}, icon: icon),
        backgroundColor: AppColors.appbarColor,
        title: Text(HomeString.titles),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                PopularContainerWidget(
                  imageUrl: 'assets/images/pop1.jpg',
                ),
                PopularContainerWidget(
                  imageUrl: 'assets/images/pop2.jpg',
                ),
                PopularContainerWidget(
                  imageUrl: 'assets/images/pop3.jpg',
                ),
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
          SizedBox(
            height: screenSize.height * 0.04,
          ),
          Text(
            HomeString.trending,
            style: Apptext.label2,
          ),
       SizedBox(
        height: 170,
      
         child: ListView.separated(
               scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
           return  const  TrendingScreen();
         }, separatorBuilder: (context, index) => const SizedBox(width: 5,), itemCount: 5),
       ),
       
          SizedBox(
            height: screenSize.height * 0.02,
          ),
          Text(
            HomeString.top,
            style: Apptext.label2,
          ),
               SizedBox(
            height: screenSize.height * 0.01,
          ),

 
          SizedBox(height: 160,
            child: ListView.separated(
            scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                 return    ImageStackWidget(
              height: screenSize.height * 0.20,
              width: screenSize.width * 0.5,
              index: index+1,
            );
            }, separatorBuilder: (context, index) => const SizedBox(width: 10,), itemCount: 5),
          )

  


         
        
        ]),
      ),
    );
  }
}
