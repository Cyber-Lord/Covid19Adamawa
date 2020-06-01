import 'package:flutter/material.dart';
import 'package:COVID19_Adamawa/pages/home.dart';
import 'package:COVID19_Adamawa/pages/web_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'COVID19-Adamawa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.green,
        platform: TargetPlatform.iOS,
      ),
      home: Home(),
    );
  }
}