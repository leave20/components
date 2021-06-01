import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alerts': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'donut_large':Icons.donut_large,
  'inputs':Icons.input,
  'tune':Icons.tune,
  'list':Icons.list
};

//Método para traer los nombres de los iconos de forma personalizada
Icon getIcon(String nameIcon) {
  return Icon(_icons[nameIcon], color: Colors.blue);
}
