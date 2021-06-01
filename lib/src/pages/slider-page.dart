import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 100.0;
  bool _blockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _checkBox(),
            _createImage(),
            _createSwitch()
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
        activeColor: Colors.pink,
        // divisions: 5,
        label: 'Image size',
        value: _value,
        min: 10.0,
        max: 400.0,
        onChanged: (_blockCheck)
            ? null
            : (value) {
                setState(() {
                  _value = value;
                  print(_value);
                });
              });
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage('https://i.imgur.com/0Bck7rw.png'),
      width: _value,
      fit: BoxFit.contain,
    );
  }

  Widget _checkBox() {
    // return Checkbox(
    //     value: _blockCheck,
    //     onChanged: (value) {
    //       setState(() {
    //         _blockCheck = value;
    //       });
    //     });
    return CheckboxListTile(
        title: Text('Slider blocked'),
        value: _blockCheck,
        onChanged: (value) {
          setState(() {
            _blockCheck = value;
          });
        });
  }

  Widget _createSwitch() {
    return SwitchListTile(
        title: Text('Slider blocked'),
        value: _blockCheck,
        onChanged: (value) {
          setState(() {
            _blockCheck = value;
          });
        });
  }
}
