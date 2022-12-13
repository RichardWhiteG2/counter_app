
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
} 

class _HomeScreenState extends State<HomeScreen> {
  int counter = 15;
  
  @override
  Widget build(BuildContext context) {
    const fontSize30 =  TextStyle(fontSize: 30); //Tamaño de la letra
    
    return  Scaffold(
      appBar: AppBar(
        title: const Text("CounterScreen"),
        elevation: 0,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //alinea hacia abajo
          //crossAxisAlignment: CrossAxisAlignment.end,                         //Alinea los hijos respecto a el padre.
          children:   <Widget>[
              const Text("Número de Clicks", style: fontSize30 ), //fontSize30 utiliza el estilo
              Text( "$counter", style: fontSize30 ),
          ],
        ),
      ),
      //floatingActionButtonLocation   mueve la posición del boton. 
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined),
            onPressed: () {  
              counter++;
              setState(() {});
            },
          
          ),
          
          FloatingActionButton(
            child: const Icon(Icons.remember_me_outlined),
            onPressed: () {  
              counter=0;
              setState(() {});
            },
          
          ),


          

          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () {  
              counter--;
              setState(() {});
            },
          
          ),
        ],
      ),
    );  
  }
}