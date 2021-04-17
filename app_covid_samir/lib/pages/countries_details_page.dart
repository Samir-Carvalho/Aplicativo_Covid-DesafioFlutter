import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContriesDatailsPage extends StatelessWidget {
  //final ToModel model;
  //const ContriesDatailsPage({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String stringCountrie =
        ModalRoute.of(context).settings.arguments ?? '';
    print('string:' + stringCountrie);
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text(stringCountrie),
      )),
    );
  }
}
