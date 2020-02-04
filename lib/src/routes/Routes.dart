import 'package:componentes_app/src/pages/AnimatedContainerPage.dart';
import 'package:componentes_app/src/pages/CardPage.dart';
import 'package:componentes_app/src/pages/HomePage.dart';
import 'package:componentes_app/src/pages/alertPage.dart';
import 'package:componentes_app/src/pages/avatarPage.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
  };
}
