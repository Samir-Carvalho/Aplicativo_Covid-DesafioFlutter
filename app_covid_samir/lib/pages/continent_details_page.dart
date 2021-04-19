import 'package:app_covid_samir/model/model_api.dart';
import 'package:app_covid_samir/widgets/widget_tab_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContinentDetailsPage extends StatelessWidget {
  final ToModel model;
  const ContinentDetailsPage({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(model.continent,
              style: TextStyle(
                fontFamily: 'Ubuntu-Bold',
                fontSize: 16,
              ))),
      body: TabBarClass(model: model),
    );
  }
}
