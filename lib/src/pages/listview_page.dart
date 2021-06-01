import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _listPageState = [];
  int _ultimateItem = 0;

  @override
  void initState() {
    super.initState();
    _add10();

    _scrollController.addListener(() {
      print('Scroll');

      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _add10();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: _createList(),
    );
  }

  Widget _createList() {
    return ListView.builder(
        controller: _scrollController,
        itemCount: _listPageState.length,
        itemBuilder: (BuildContext context, int index) {
          final image = _listPageState[index];

          return FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage('https://picsum.photos/id/$image/2500/1667'));
        });
  }

  void _add10() {
    for (var i = 1; i < 10; i++) {
      _ultimateItem++;
      _listPageState.add(_ultimateItem);
    }
    setState(() {});
  }
}
