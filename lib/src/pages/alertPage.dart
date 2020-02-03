import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
          child: RaisedButton(
        child: Text('Mostrar Alert'),
        color: Colors.blue,
        textColor: Colors.white,
        shape: StadiumBorder(),
        onPressed: () => _mostrarAlert(context),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true, // Cerrar alerta haciendo clic afuera
        builder: (context) {
          return AlertDialog(
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)) ,
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,// q se adapte al contenido interno
              children: <Widget>[
                Text('Este es el contenido de la caja alerta'),
                FlutterLogo(
                  size: 100.0,
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          );
        });
  }
}
