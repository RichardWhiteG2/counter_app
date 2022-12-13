
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const fontSize30 =  TextStyle(fontSize: 30); //Tamaño de la letra
    return  Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
        elevation: 0,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //alinea hacia abajo
          //crossAxisAlignment: CrossAxisAlignment.end,                         //Alinea los hijos respecto a el padre.
          children:  const <Widget>[
              Text("Número de Clicks", style: fontSize30 ), //fontSize30 utiliza el estilo
              Text("10", style: fontSize30),
          ],
        ),
      )
    );  
  }

}