import 'package:componentes_app/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

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
    print (menuProvider.opciones);
    return ListView(
      children: _lisItems(),
    );
  }

  List<Widget> _lisItems() {

    return [
      ListTile( title: Text ('Hello World')),
      Divider(),
      ListTile( title: Text ('Hello World')),
      ListTile( title: Text ('Hello World')),
    ];
  }
}
