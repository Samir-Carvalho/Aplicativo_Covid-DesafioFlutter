import 'package:app_covid_samir/model/model_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContriesDatailsPage extends StatelessWidget {
  final ToModel model;
  const ContriesDatailsPage({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(key);
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(),
      child: Container(),
    );
  }
}
