import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(5.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height:30.0),
          _cardTipo2(),
          SizedBox(height:30.0),
          _cardTipo1(),
          SizedBox(height:30.0),
          _cardTipo2(),
          SizedBox(height:30.0),
          _cardTipo1(),
          SizedBox(height:30.0),
          _cardTipo2(),
          SizedBox(height:30.0),
          _cardTipo1(),
          SizedBox(height:30.0),
          _cardTipo2(),
          SizedBox(height:30.0),
          _cardTipo1(),
          SizedBox(height:30.0),
          _cardTipo2(),
          SizedBox(height:30.0),
          _cardTipo1(),
          SizedBox(height:30.0),
          _cardTipo2(),
          SizedBox(height:30.0),
          _cardTipo1(),
          SizedBox(height:30.0),
          _cardTipo2(),
          SizedBox(height:30.0),
          _cardTipo1(),
          SizedBox(height:30.0),
          _cardTipo2(),
          SizedBox(height:30.0),
          _cardTipo1(),
          SizedBox(height:30.0),
          _cardTipo2(),
          SizedBox(height:30.0),
          _cardTipo1(),
          SizedBox(height:30.0),
          _cardTipo2(),
          SizedBox(height:30.0),
        ],
        ),
    );
  }

  Widget _cardTipo1(){

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color:Colors.blue),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Aquí estamos colocando la descripcion de la tarjeta para los prestamos que se le brindaran a los clientes'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text('Cancelar'),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text('Ok'),
                  onPressed: () {},
                ),
              ],
            )
        ],
      ),
    );
  }

  Widget _cardTipo2(){

    final card = Container(
      
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage('https://cdn.mos.cms.futurecdn.net/dzw5DkXqEpRWVgDv7Das6n.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
            ),

          //Image(
          //  image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/000/246/312/original/mountain-lake-sunset-landscape-first-person-view.jpg'), 
          //  ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Información de la imagen')
            )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 5.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: card,
        ),
    );
  }

}