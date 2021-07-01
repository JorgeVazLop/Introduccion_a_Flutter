import 'package:flutter/material.dart';
//importamos las paginas que creamos para poder usarlas
import 'package:tapbar/paginas/eliminados.dart';
import 'package:tapbar/paginas/favoritos.dart';
import 'package:tapbar/paginas/home.dart';

void main() {
  runApp(new MaterialApp(
    home: Tabs(),
  ));
}

class Tabs extends StatefulWidget {
  Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

// SingleTickerProviderStateMixin nos permite hacer animaciones en el controlador
class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  //al poner "?" podemos usar la variable sin inicializarla
  TabController? control;

//metodo que se utiliza cuando el widget es creado
  @override
  void initState() {
    super.initState();
    //length: 3 numero de secciones
    control = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //barra menu
        appBar: new AppBar(
          title: new Text("Secciones "),
          backgroundColor: Colors.redAccent,
          //botones en forma de seccion
          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.home),
              ),
              new Tab(
                icon: new Icon(Icons.favorite),
              ),
              new Tab(
                icon: new Icon(Icons.delete),
              )
            ],
            controller: control,
          ),
        ),
        //agregamos lo que se vera en cada una de las secciones
        body: new TabBarView(
          children: <Widget>[new Home(), new Favoritos(), new Eliminados()],
          //habilitamos el uso con el control
          controller: control,
        ));
  }
}
