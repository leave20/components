import 'package:components/src/pages/alerts_page.dart';
import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/util/icon_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.chargeData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _ItemList(snapshot.data, context),
        );
      },
    );
  }

  // ignore: non_constant_identifier_names
  List<Widget> _ItemList(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];
    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['text']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        //Función para ingresar a cualquier vista nueva solo pulsando dicho componente
        onTap: () {
          Navigator.pushNamed(context, element['rout']);

          //  final route = MaterialPageRoute(builder: (context) {
          //    return AlertsPage();
          // });
          //
          //  Navigator.push(context, route);
        },
      );
      options..add(widgetTemp)..add(Divider());
    });
    return options;
  }
}
