import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: Alerta_De_Dialogo(),
  ));
}

class Alerta_De_Dialogo extends StatefulWidget {
  Alerta_De_Dialogo({Key? key}) : super(key: key);

  @override
  _Alerta_De_DialogoState createState() => _Alerta_De_DialogoState();
}

//enumerador que permite tener los indicadores de los reultados
enum DialogAction { yes, no }

class _Alerta_De_DialogoState extends State<Alerta_De_Dialogo> {
  String _valorIngresado = "";

//metodo para ver los resultados de la laerta de dialogo
  void _resultados(DialogAction action) {
    print("Su respuesta fue....... $action");
  }

  //al poner el _ significa que el metodo es privado
  //metodo que nos indica que respuesta selecciono
  void _presionado(String valor) {
    AlertDialog dialogo = new AlertDialog(
      content: new Text(valor),
      //respuestas
      actions: <Widget>[
        //boton para si
        new FlatButton(
            onPressed: () {
              //indicamos que cuando sellecione "si" mostrara la respuesta respectiva
              _resultados(DialogAction.yes);
            },
            child: new Text("Si")),
        //boton para no
        new FlatButton(
            onPressed: () {
              //indicamos que cuando sellecione "no" mostrara la respuesta respectiva
              _resultados(DialogAction.no);
            },
            child: new Text("No"))
      ],
    );
    //mostramos el contenido de la alerta de dialogo
    showDialog(builder: (context) => dialogo, context: context);
  }

//metodo para cambiar el valor del boton
  void _cambio(String valor) {
    setState(() {
      _valorIngresado = valor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Demo Alerta de Dialogo"),
        ),
        body: new Container(
            child: new Center(
                child: Column(
          children: <Widget>[
            new TextField(
              //texto de fondo del input
              decoration: new InputDecoration(hintText: "Ingrese el texto!!"),
              //cambiamos el valor
              onChanged: (String valor) {
                _cambio(valor);
              },
            ),
            //agregamos el boton para ver la alerta de dialogo
            new RaisedButton(
              child: new Text("Ver alerta de dialogo"),
              onPressed: () {
                _presionado("¿Esta seguro de su elección");
              },
            )
          ],
        ))));
  }
}
