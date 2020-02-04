import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),

        ],
      ),
    );
  }

  _cardTipo1() {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Aqui estamos con la descripción con la tarjeta para que ustedes tengan una idea de lo que quiero mostrarles!'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text ('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text ('Ok'),
                onPressed: (){},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      //clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://lh3.googleusercontent.com/proxy/UO8K81vA1JXbNHqv_mXGVEIpzK9ZIdpsK9b7ZpVvog0PMpUWjPdwQ6F7JgQreLFWEOWI97MRCNnAPUsXZNkWHI2o6bR3amnFjX2WQuPLXHjs'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration ( milliseconds: 200),
            height: 230.0,
            fit: BoxFit.cover,
          ),
/*          Image(
            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
          ),*/

          Container(
              padding: EdgeInsets.all(8.0),
              child: Text('Deportes',)
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
