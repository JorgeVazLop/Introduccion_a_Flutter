import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: Textfield(),
  ));
}

class Textfield extends StatefulWidget {
  Textfield({Key? key}) : super(key: key);

  @override
  _TextfieldState createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  //valor ingresado
  String valorIngresado = "";
  final TextEditingController control = new TextEditingController();
  //funcion encargada de agregar el texto introducido y limpiar el input al dar enter
  void onSubmitted(String valor) {
    setState(() {
      //agregamos el valor ingreado y un salto de linea
      valorIngresado = valorIngresado + "\n" + valor;
      //limpiamos el input
      control.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Edit Text Widget"),
        backgroundColor: Colors.black87,
      ),
      body: new Container(
        padding: const EdgeInsets.all(15.0),
        child: new Center(
            child: new Column(
              //alineamos el texto a la izquierda
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new TextField(
              decoration:
                  //texto de fondo del input
                  new InputDecoration(hintText: "Ingrese el texto aqui!"),
              //onSubmitted es el evento que se ejecuta cuando se termina de ingresar el texto
              onSubmitted: (String valor) {
                //metemos el valor en el metodo de ingresar a la lista
                onSubmitted(valor);
              },
              //habilitamos el control para que funcione
              controller: control,
              maxLines: 5, //N° mx de lineas del input
            ),
            //pintamos el texto en pantalla
            new Text(valorIngresado)
          ],
        )),
      ),
    );
  }
}
