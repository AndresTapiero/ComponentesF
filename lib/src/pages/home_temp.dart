import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco','Seis'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Tenmp'),
      ),
      body: ListView(
        children: _crearItemCorta()
      ),
    );
  }

  List<Widget> _createItems(){

    List<Widget> lista = new List<Widget>();

    for (String opt in opciones){
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
            ..add(Divider());
    }

    return lista;
  }

    List<Widget> _crearItemCorta(){

    return opciones.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Holitas'),
            leading: Icon(Icons.map),
            trailing: Icon(Icons.arrow_forward_ios) ,
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();



    }

}
