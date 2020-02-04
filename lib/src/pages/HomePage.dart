import 'package:flutter/material.dart';
import 'package:componentes_app/src/Utils/iconoStringUtil.dart';
import 'package:componentes_app/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot){

        return ListView(
          children: _lisItems(snapshot.data, context),
        );
      },
    );

/*    print (menuProvider.opciones);
    return ListView(
      children: _lisItems(),
    );*/
  }

  List<Widget> _lisItems(List<dynamic> data, BuildContext context) {

    final List<Widget> opciones = [];
    if(data == null){return [];}//opcional el inicial data soluciona esta
    data.forEach((opt){
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_down),
        onTap: (){
          Navigator.pushNamed(context, opt['ruta']);

/*          final route = MaterialPageRoute(
              builder: (context) => AlertPage()
          );
          Navigator.push(context, route);*/
        },

      );
      opciones..add(widgetTemp)
        ..add(Divider());
    });
    return opciones;
  }
}
