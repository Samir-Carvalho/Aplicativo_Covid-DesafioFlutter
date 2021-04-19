import 'package:app_covid_samir/model/model_api.dart';
import 'package:app_covid_samir/widgets/widget_continent_details.dart';
import 'package:app_covid_samir/widgets/widget_list_countrie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarClass extends StatelessWidget {
  final ToModel model;
  const TabBarClass({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //color: Color(0XFFECEFF1),
          primaryColor:
              Color(0xFfffffff)), //primaryColor: Color(0xFfffffff)  ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Detalhes"),
                Tab(text: "Países"),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              /////////// container Detalhes
              Container(
                child: ContinentDetailsWidget(model: model),
              ),

              Container(
                child: ListCountriePage(model: model),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
