import 'package:flutter/material.dart';
import 'package:promilo/resources/constants/colors.dart';
import 'package:promilo/resources/strings/homestring.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        // leading: IconButton(onPressed: (){}, icon: icon),
        backgroundColor: AppColors.appbarColor,
        title:Text(HomeString.titles) ,
      ),

      body:  Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(children: [
          Container(
            padding: const EdgeInsets.only(left: 10,right: 10),
            // color: Colors.amber,
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.black)
            ),
            child: Row(
              children: [
              const  Icon(Icons.search_rounded,color: Colors.black),
               const SizedBox(width: 10)
                ,Text(HomeString.search),
              const  Expanded(child: SizedBox()),
             const   Icon(Icons.mic)
              ],
            ),
          )
        ]),
      ),
    );
  }
}