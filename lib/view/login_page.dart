import 'package:flutter/material.dart';
import 'package:promilo/resources/constants/style.dart';
import 'package:promilo/resources/string/login_string.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    
    final Size screensize=MediaQuery.of(context).size;
    return   Scaffold(
      body: Column(
        children: [
          SizedBox(height: screensize.height*0.1,),
         Center(child: Text(LoginString.appname,style: Apptext.smallDark,)),
         SizedBox(height: screensize.height*0.10,),
         Center(child: Text(LoginString.welcome,style: Apptext.mediumDark,)),


        ],
      ),
    );
  }
}