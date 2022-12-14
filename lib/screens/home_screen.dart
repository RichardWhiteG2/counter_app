
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
} 

class _HomeScreenState extends State<HomeScreen> {
  int counter = 15;
  
  void increase(){
    counter++;
    setState(() {});
  }
   void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }
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
      floatingActionButton:  CustomFlotingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset
      ),
    );  
  }
}

class CustomFlotingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFlotingActions({
    Key? key, 
    required this.increaseFn,
    required this.decreaseFn, 
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:  [
        FloatingActionButton(
          child:  const Icon(Icons.exposure_plus_1_outlined),
          onPressed:() => increaseFn(),// () =>setState(() =>counter++),
        
        ),
        
        FloatingActionButton(
          child:  const Icon(Icons.remember_me_outlined),
          onPressed: () {
               resetFn(); //() =>setState(() =>counter=0),
          },
        ),
        FloatingActionButton(
          child:  const Icon(Icons.exposure_minus_1_outlined),
           onPressed: () => decreaseFn(),//() =>setState(() =>counter--),
        
        ),
      ],
    );
  }
}