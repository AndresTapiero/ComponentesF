import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(7.5),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://www.elsoldeacapulco.com.mx/incoming/wpgvi0-villanos-creados-por-stan-lee.jpg/ALTERNATES/LANDSCAPE_400/Villanos%20creados%20por%20Stan%20lee.jpg"),
              //radius: 30.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )

        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage("https://staticuestudio.blob.core.windows.net/buhomag/2016/03/22154524/stan.jpg"),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
