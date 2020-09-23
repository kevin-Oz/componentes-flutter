import 'package:componentes/app/src/pages/alert_page.dart';
import 'package:componentes/app/src/pages/animated_container_page.dart';
import 'package:componentes/app/src/pages/avatar_page.dart';
import 'package:componentes/app/src/pages/card_page.dart';
import 'package:componentes/app/src/pages/home_page.dart';
import 'package:componentes/app/src/pages/input_page.dart';
import 'package:componentes/app/src/pages/slider_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return {
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlerPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animated': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slide': (BuildContext context) => SliderPage(),
  };
}
