
import 'package:flutter/material.dart';

//Es estatico statelesswidget
class HomePage extends StatelessWidget{

  final textStyle=new TextStyle(fontSize: 25);
  final count=10;
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text('Adopta un perrito'),
        centerTitle: true,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks',style:textStyle),
            Text('$count', style: textStyle,),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        
        onPressed: (){
        print('Hola mundo');
        },
      ),
      bottomNavigationBar: BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Container(height: 50.0,),
    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}