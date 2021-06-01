import 'dart:js';

import 'package:components/src/pages/alerts_page.dart';
import 'package:components/src/pages/animated_container.dart';
import 'package:components/src/pages/avatar_page.dart';
import 'package:components/src/pages/card_page.dart';
import 'package:components/src/pages/home_page.dart';
import 'package:components/src/pages/inputs.dart';
import 'package:components/src/pages/listview_page.dart';
import 'package:components/src/pages/slider-page.dart';
import 'package:flutter/material.dart';


Map<String, WidgetBuilder>getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertsPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card':(BuildContext context)=> CardPage(),
    'animatedContainer':(BuildContext context)=>AnimatedContainerPage(),
    'inputs':(BuildContext context) =>InputPage(),
    'slide':(BuildContext context) =>SliderPage(),
    'list':(BuildContext context)=>ListViewPage()
  };
}