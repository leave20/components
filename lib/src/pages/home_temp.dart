import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['one', 'two', 'three', 'four', 'five'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        //lateral bar
        appBar: AppBar(
          //title app bar
          title: Text('Components Temp'),
        ),
        //List Component
        body: ListView(
          // children: _ItemsCreate(),
          children: _ShortItemsCreate(),
        ));
  }

  //Crear una lista
  List<Widget> _ItemsCreate() {
    List<Widget> list = [];
    //opt va a ser el valor de cada una de los items de mi lista options
    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      //agregaremos el tempWidget y luego un divider por cadq iteracion
      list..add(tempWidget)..add(Divider());
    }

    return list;
  }

  //Crear una lista del modo mas corto
  // List<Widget> _ShortItemsCreate() {
  //   var widget = options.map((e) {
  //     return ListTile(title: Text(e));
  //   }).toList();
  //   return widget;
  // }

//Crear una lista del modo mas corto
  List<Widget> _ShortItemsCreate() {
    return options.map((e) {
      return Column(
        children: [
          ListTile(
            //titulo del bloque
            title: Text(e),
            //subtitulo del bloque
            subtitle: Text('Principal info'),
            //inicio del bloque
            leading: Icon(Icons.account_circle),
            //final del bloque
            trailing: Icon(Icons.keyboard_arrow_right),
            //Función click
            onTap: (){

            },
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
