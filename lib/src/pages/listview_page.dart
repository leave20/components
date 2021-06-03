import 'dart:async';

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _listPageState = [];
  int _ultimateItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _add10();

    _scrollController.addListener(() {
      print('Scroll');

      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // _add10();
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List'),
        ),
        body: Stack(
          children: <Widget>[_createList(), _createLoading()],
        ));
  }

  Widget _createList() {
    return RefreshIndicator(
      onRefresh: pageObtenied,
      child: ListView.builder(
          controller: _scrollController,
          itemCount: _listPageState.length,
          itemBuilder: (BuildContext context, int index) {
            final image = _listPageState[index];

            return FadeInImage(
                fit: BoxFit.cover,
                height: 300.0,
                placeholder: AssetImage('assets/jar-loading.gif'),
                image: NetworkImage('https://picsum.photos/id/$image/2500/1667'));
          }),
    );
  }

  void _add10() {
    for (var i = 1; i < 10; i++) {
      _ultimateItem++;
      _listPageState.add(_ultimateItem);
    }
    setState(() {});
  }

  Future<Null> fetchData() async {
    _isLoading = true;
    setState(() {});

    final duration = new Duration(seconds: 2);

    return new Timer(duration, responseHttp);
  }

  void responseHttp() {
    _isLoading = false;

    _scrollController.animateTo(_scrollController.position.pixels + 100,
        duration: Duration(
          milliseconds: 250,
        ),
        curve: Curves.fastOutSlowIn);

    _add10();
  }

  Widget _createLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(height: 15.0)
        ],
      );
    } else {
      return Container();
    }
  }

  Future<Null> pageObtenied()async {
    final duration=new Duration(seconds: 2);
    new Timer(duration,(){
      _listPageState.clear();
      _ultimateItem++;
      _add10();
    });
return Future.delayed(duration);
  }
}
