import 'package:components/src/pages/alerts_page.dart';
import 'package:components/src/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Ttitle  app bar
      debugShowCheckedModeBanner: false,
      title: 'App Components',
      //Import app body from src > pages

      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
        print('Call Route: ${settings.name} ');
        return MaterialPageRoute(
          builder: (
          BuildContext context
          )=>AlertsPage()
        );
      },
    );
  }
}
