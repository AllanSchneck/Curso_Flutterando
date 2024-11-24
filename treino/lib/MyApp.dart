

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treino/App_Controler.dart';

import 'Home_Page.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder( animation: AppControler.instance,builder: (context, child) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo,brightness: AppControler.instance.dartTheme ? Brightness.dark : Brightness.light),
      home: HomePage(),
    );
      }
    );
  }
}