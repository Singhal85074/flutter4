
import 'package:flutter/material.dart';
import './two.dart';

/*
class MyApp extends StatelessWidget {
  hexColor(String colorText){
    String str = '0xff' + colorText;
    int colorInt = int.parse(str);
    return colorInt;
    
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Color(hexColor('f0a500')),
      )
    );
  }
}
*/
void main(){
  runApp(MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home : MyWidget(),
  ));
}
