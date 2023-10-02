import 'package:flutter/material.dart';

class Logo extends StatelessWidget{
  const Logo ({super.key});

  @override
  Widget build(BuildContext context){
    return Image.asset(
      'assets/images/logo.png',
      width: 188,
      height: 200,
    );
  }


}