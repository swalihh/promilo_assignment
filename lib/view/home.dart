import 'package:flutter/material.dart';
import 'package:promilo/resources/constants/colors.dart';
import 'package:promilo/resources/strings/homestring.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
            color: Colors.amber,
            height: 50,
            width: double.infinity,
          )
        ]),
      ),
    );
  }
}