import 'package:flutter/material.dart';

import 'package:contador/src/pages/home_page.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build(contex){
   
    return MaterialApp(
     home: Center(
       child: HomePage(),
     )
    ,
   ); 
  }

}