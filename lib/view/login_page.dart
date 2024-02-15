import 'package:flutter/material.dart';
import 'package:promilo/resources/constants/style.dart';
import 'package:promilo/resources/strings/login_string.dart';
import 'package:promilo/resources/widgets/textfield_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {


    final Size screensize=MediaQuery.of(context).size;
    return   Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: screensize.height*0.05,),
           Center(child: Text(LoginString.appname,style: Apptext.smallDark,)),
           SizedBox(height: screensize.height*0.06,),
           Center(child: Text(LoginString.welcome,style: Apptext.mediumDark,)),
          SizedBox(height: screensize.height*0.06,),
          SignUpTextField(
            hintText: LoginString.signinHint,
            label: LoginString.signinlabel,
            labelStyle: Apptext.label,
          ),
        const  SizedBox(height: 10,),
              SignUpTextField(
            hintText: LoginString.passwordHInt,
            label: LoginString.passwordtext,
            labelStyle: Apptext.label,
            // labeltwo: LoginString.passwordlabeltwo,
          ),
           Row(children: [
            Container(
              height: 20,
       decoration: BoxDecoration(
               color: Colors.black,

        borderRadius:BorderRadius.circular(10) ),
              width: 20,
            )
          ],)
        
        
        
        
          ],
        ),
      ),
    );
  }
}