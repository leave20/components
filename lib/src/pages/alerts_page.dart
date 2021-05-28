import 'package:flutter/material.dart';

class AlertsPage  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert page'),
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
