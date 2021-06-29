import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: "Primer Aplicacion con FLutter",//titulo de la app
      home: new Scaffold(
          appBar: new AppBar(title: new Text("Primer aplicacion")),//titulo de la barra principal
          body: new Container(
              child: new Center(child: new Text("Hola mundo"))))));//mensaje en pantalla
}
