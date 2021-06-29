import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
          title: "Stateless Widget", //titulo de la app
    home: MyApp(
    ),
  ));
}

//Manera de crear Stateless widget en Flutter
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //varible dque contiene el tamaño de icono
    final double iconsize = 40.0;
    //variable que contiene el estilo de letra
    final TextStyle textStyle = new TextStyle(
        color: Colors.black, fontSize: 45.0, fontStyle: FontStyle.italic);
    //iciamos el cuerpo total de la pantalla
    return new Scaffold(
      //Barra de titulo
      appBar: new AppBar(
        title: new Text("Stateless Widget"),
      ),
      //inicializamos con el cuerpo de la pantalla
      body: new Container(
          child: Center(
        //Centramos el texto
        child: new Column(
          //Inicializamos las columnas
          //Las alineamos para que ocupen todo el espacio disponible
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //Aqui dividimos las columnas en cuantas se necesiten
            new MyCard(
                //Fila 1
                title: new Text("Texto 1", style: textStyle),
                icon: new Icon(Icons.favorite,
                    color: Colors.orange, size: iconsize)),
            new MyCard(
                //Fila 2
                title: new Text("Texto 2", style: textStyle),
                icon: new Icon(Icons.thumb_up,
                    color: Colors.blue, size: iconsize)),
            new MyCard(
                //Fila 3
                title: new Text("Texto 3", style: textStyle),
                icon: new Icon(Icons.cancel, color: Colors.red, size: iconsize))
          ],
        ),
      )),
    );
  }
}

//Clase encargada de aignarnar detalles
class MyCard extends StatelessWidget {
  //Creamos el constructor
  final Widget title; 
  final Widget icon;
  MyCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return new Container(
      //separacion entre una fila y otra
        padding: const EdgeInsets.only(bottom: 5.0),
        child: new Card(
            child: Container(
              //Separacion entre el ultimo elemento de la fila con el borde
          padding: const EdgeInsets.all(25.0),
          child: Column(
            //COn el constructor hecho asignamos el titulo y el icono 
            children: <Widget>[this.title, this.icon],
          ),
        )));
  }
}
