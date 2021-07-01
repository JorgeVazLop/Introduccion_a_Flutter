import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Uno(),
  ));
}

class Uno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: new AppBar(
        title: new Text("Primera pantalla"),
        backgroundColor: Colors.black87,
      ),
      body: new Center(
          child: new RaisedButton(
        child: new Text(
          "Ir a la segunda pantalla",
          style: new TextStyle(color: Colors.white),
        ),
        color: Colors.black87,
        onPressed: () {
          //Con Navigator.push podemos manejar en diversas pantallas en el mismo archivo
          Navigator.push(
              context, new MaterialPageRoute(builder: (context) => new Dos()));
        },
      )),
    );
  }
}

class Dos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: new AppBar(
        title: new Text("Segunda pantalla"),
        backgroundColor: Colors.black87,
      ),
      body: new Center(
          child: new RaisedButton(
        child: new Text(
          "Ir a la primer pantalla",
          style: new TextStyle(color: Colors.white),
        ),
        color: Colors.black87,
        onPressed: () {
          //Con Navigator.pop regresamos a la clase que os llamo en primera instancia
          Navigator.pop(
              context, new MaterialPageRoute(builder: (context) => new Uno()));
        },
      )),
    );
  }
}
