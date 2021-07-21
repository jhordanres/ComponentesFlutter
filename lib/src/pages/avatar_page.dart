import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[

          Container(  
            padding: EdgeInsets.all(7.0),
            child: CircleAvatar(
            backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/477556994002284544/E9js6Cc3_400x400.jpeg'),
            radius: 20.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right:10.0),
            child: CircleAvatar(
              child: Text('JR'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://pbs.twimg.com/profile_images/477556994002284544/E9js6Cc3_400x400.jpeg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}