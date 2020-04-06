import 'dart:developer';

import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget{

@override
  createState() =>_ContadorPageState();


}

class _ContadorPageState extends State<ContadorPage>{

final _textStyle=new TextStyle(fontSize: 25);
int _count=0;

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFull'),
        centerTitle: true,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de taps',style:_textStyle),
            Text('$_count', style: _textStyle,),
          ]
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
        
      //   onPressed: (){

      //   setState(() {
      //      _count++;
      //   });

      //   },
      // ),
      floatingActionButton: _crearBotones(),

      bottomNavigationBar: BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Container(height: 50.0,),
    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }


  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(child:Icon(Icons.exposure_zero), onPressed:_reset,),
        Expanded(child: SizedBox()),
        FloatingActionButton(child:Icon(Icons.remove), onPressed: _sustraer,),
        SizedBox(width: 5.0,),
        FloatingActionButton(child:Icon(Icons.add), onPressed: _agregar,)
      ],);

  }

  void _agregar(){
    setState(()=>_count++); 
  }
  void _sustraer(){
    setState(() => _count--);
  }
  void _reset(){
    setState(()=> _count=0);
  }
}