import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => new _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String text = "";
  int cont = 0;
  List<String> coleccion = [
    'H',
    'O',
    'L',
    'A',
    '',
    'M',
    'U',
    'N',
    'D',
    'O',
    ''
  ];
//cuando el boton se presione vendra a esta funcion
//donde se actualizara el contenido del array cada vez que se presione el boton
  void onPressButton() {
    //cambio de estado del array con setState
    setState(() {
      //asignamos el contenido del array a la variable de text que es la que se muestra
      text = coleccion[cont];
      //if simple en DART
      //    cont = cont < 4 ? cont + 1 : 0;
//if en Flutter
      if (cont < 10) {
        cont = cont + 1;
      } else {
        cont = 0;
      }
    });
  }

  @override
//la instruccion buld se encarga de construir el contenido del widget
  Widget build(BuildContext context) {
    return new Scaffold(
      //creacion de la barra de menu
      appBar: new AppBar(
        //titulo de la app
        title: new Text("Stateful Widget"),
        //color de fondo de la barra de menu
        backgroundColor: Colors.black87,
      ),
      //Cuerpo de la app
      body: new Container(
          //centramos el texto
          child: new Center(
              //agregamos una columna
              child: new Column(
        //la alineamos en el centro
        mainAxisAlignment: MainAxisAlignment.center,
        //dividimos el cuerpo
        children: <Widget>[
          //fila 1 texto
          new Text(text, style: new TextStyle(fontSize: 40.0)),
          //Padding es la separacione entre el texto y el boton
          new Padding(padding: new EdgeInsets.all(10.0)),
          //fila 2 Boton
          new RaisedButton(
            //texto del boton, asi como el estilo del mismo
            child: new Text("Toca para ver el mensaje oculto :0",
                style: new TextStyle(color: Colors.white)),
            color: Colors.black87,
            //Cuando se presione ira a esa funcion
            onPressed: onPressButton,
          )
        ],
      ))),
    );
  }
}
