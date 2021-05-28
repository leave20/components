import 'package:flutter/services.dart';
import 'dart:convert';

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    chargeData();
  }

//pROVIDER QUE TIENE UN METODO CARGAR DATA, QUE REGRESA UN FUTURE QUE RESUELVE UNA LISTA CON OBJETOS DINAMICOS
  Future<List<dynamic>> chargeData() async {
    final resp = await rootBundle.loadString('data/menu_opt.json');
    //Convertir la data string en Json y se la otorgamos a nuestro mapa
    Map datamap = json.decode(resp);

    // print(datamap['routs']);

    //Almacenamos la lista de nuestro datamap en las opciones
    options = datamap['routs'];

    return options;
  }
}

final menuProvider = new _MenuProvider();
