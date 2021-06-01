import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar page'),
        actions: <Widget>[
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/48972563?s=400&u=78e8b72010c99b934e87237990416eb3d383fa5c&v=4'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 3.0),
            child: CircleAvatar(
              child: Text('L'),
              backgroundColor: Colors.pinkAccent,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://avatars.githubusercontent.com/u/48972563?s=400&u=78e8b72010c99b934e87237990416eb3d383fa5c&v=4'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.keyboard_arrow_left),
      ),
    );
  }
}
