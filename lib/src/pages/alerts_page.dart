import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertsPage  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Alert'),
          onPressed: ()=>_mostrarAlert(context),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            shape: StadiumBorder(),
          ),
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

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context){

          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            title: Text('Title'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('This is alert content'),
                FlutterLogo(
                  size: 100.0,
                )
              ],
            ),
            actions: <Widget>[
              TextButton(
                  child:Text('Cancel'),
                onPressed: ()=>Navigator.of(context).pop(),
              ),
              TextButton(
                  child: Text('Ok'),
              onPressed: ()=>{

              })
            ],
          );
        });
  }
}
