import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:promilo/bloc/bloc/login_bloc.dart';
import 'package:promilo/resources/widgets/bottom_nav_bar.dart';
import 'package:promilo/view/home.dart';
import 'package:promilo/view/login_page.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => LoginBloc(),
      child:   MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Start(),
      ),
    );
  }
}
