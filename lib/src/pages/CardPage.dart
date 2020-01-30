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

        ],
      ),
    );
  }

  _cardTipo1() {
    return Card(
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
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration ( milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),


/*          Image(
            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
          ),*/
          
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('No Tengo idea de que poner'))
        ],
      ),
    );
  }
}
