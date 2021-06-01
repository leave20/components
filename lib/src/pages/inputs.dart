import 'dart:html';

import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPage createState() => _InputPage();
}

class _InputPage extends State<InputPage> {
  String _name = "";
  String _email = "";
  String _password = "";
  String _date = "";
  String _optionSelected = "fly";

  List<String> _Skills = ['fly', 'X-rays', 'super breath', 'super strength'];

  TextEditingController _textEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs text'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _createEmail(),
          Divider(),
          _createPassword(),
          Divider(),
          _createDate(context),
          Divider(),
          _createDropdown(),
          Divider(),
          _createPerson(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          counter: Text('letters :${_name.length}'),
          hintText: 'Name',
          labelText: 'Name',
          helperText: 'Just Name',
          suffixIcon: Icon(Icons.person),
          icon: Icon(Icons.person)),
      onChanged: (valor) {
        setState(() {
          _name = valor;
          print(_name);
        });
      },
    );
  }

  _createEmail() {
    return TextField(
      // autofocus: true,
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          hintText: 'Email',
          labelText: 'E-mail',
          helperText: 'Just Email',
          suffixIcon: Icon(Icons.email),
          icon: Icon(Icons.email)),
      onChanged: (valor) {
        setState(() {
          _email = valor;
          print(_email);
        });
      },
    );
  }

  _createPassword() {
    return TextField(
      // autofocus: true,
      obscureText: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          hintText: 'Password',
          labelText: 'Password',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock_open)),
      onChanged: (valor) {
        setState(() {
          _password = valor;
          print(_password);
        });
      },
    );
  }

  Widget _createDate(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          hintText: 'Date of birth',
          labelText: 'Date of birth',
          suffixIcon: Icon(Icons.perm_contact_calendar),
          icon: Icon(Icons.calendar_today)),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2018),
        lastDate: new DateTime(2025),
        locale: Locale('es', 'ES'));
    if (picked != null) {
      setState(() {
        _date = picked.toString();
        _textEditingController.text = _date;
      });
    }
  }

  List<DropdownMenuItem<String>> getOptionsDropdown() {
    List<DropdownMenuItem<String>> list = [];
    _Skills.forEach((element) {
      list.add(DropdownMenuItem(
        child: Text(element),
        value: element,
      ));
    });
    return list;
  }

  Widget _createDropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0),
        Expanded(
          child: DropdownButton(
            value: _optionSelected,
            items: getOptionsDropdown(),
            onChanged: (opt) {
              setState(() {
                _optionSelected = opt;
              });
              print(opt);
            },
          ),
        )
      ],
    );
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('Name is : $_name'),
      subtitle: Text('Email is : $_email'),
      trailing: Text('Option selected is: $_optionSelected'),
    );
  }
}
