import 'package:componentes_app/src/routes/Routes.dart';
import 'package:flutter/material.dart';
import 'package:componentes_app/src/pages/alertPage.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Componentes',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
        print('Ruta llamada : ${settings.name}');
        return MaterialPageRoute(
          builder: (context) => AlertPage()
        );
      },
    );
  }
}