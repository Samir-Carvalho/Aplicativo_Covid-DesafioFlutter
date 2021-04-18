import 'package:app_covid_samir/model/model_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'continent_countries_page.dart';

class ContinentDetailsPage extends StatelessWidget {
  final ToModel model;
  const ContinentDetailsPage({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(model.continent)),
      //body: ContinentDetailsWidget(model: model),
      //body: ContinentDetailsWidget(model: model),
      body: TabBarClass(model: model),
    );
  }
}

class ContinentDetailsWidget extends StatelessWidget {
  final ToModel model;
  const ContinentDetailsWidget({Key key, @required this.model})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              ),
              Card(
                color: Colors.green,
                child: Container(
                  padding: EdgeInsets.all(22.0),
                  child: Column(
                    children: <Widget>[
                      Text('Total'),
                      Text('Total de casos '),
                      Text(model.cases.toString()),
                      Text(''),
                      //Row(
                      //children: <Widget>[
                      Text('Ativos'),
                      Text(model.casesPerOneMillion.toString() + '%'),
                      Text('Curados'),
                      Text(model.recoveredPerOneMillion.toString() + '%'),
                      Text('Óbitos'),
                      Text(model.deathsPerOneMillion.toString() + '%'),
                      //],
                      //)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 1.0, bottom: 1.0),
              ),
              Card(
                color: Colors.orange,
                elevation: 10,
                child: Container(
                  padding: EdgeInsets.all(32.0),
                  child: Column(
                    children: <Widget>[
                      Text('Hoje'),
                      Text('Casos'),
                      Text(model.todayCases.toString()),
                      Text('Óbitos'),
                      Text(model.todayDeaths.toString())
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              ),
              Card(
                color: Colors.green,
                child: Container(
                  padding: EdgeInsets.all(32.0),
                  child: Column(
                    children: <Widget>[
                      Text('Testes'),
                      Text('Realizados'),
                      Text(model.tests.toString()),
                      Text('Populção'),
                      Text(model.population.toString()),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TabBarClass extends StatelessWidget {
  final ToModel model;
  const TabBarClass({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    ),
                    Card(
                      color: Colors.green,
                      child: Container(
                        padding: EdgeInsets.all(22.0),
                        child: Column(
                          children: <Widget>[
                            Text('Total'),
                            Text('Total de casos '),
                            Text(model.cases.toString()),
                            Text(''),
                            //Row(
                            //children: <Widget>[
                            Text('Ativos'),
                            Text(model.casesPerOneMillion.toString() + '%'),
                            Text('Curados'),
                            Text(model.recoveredPerOneMillion.toString() + '%'),
                            Text('Óbitos'),
                            Text(model.deathsPerOneMillion.toString() + '%'),
                            //],
                            //)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1.0, bottom: 1.0),
                    ),
                    Card(
                      color: Colors.orange,
                      elevation: 10,
                      child: Container(
                        padding: EdgeInsets.all(32.0),
                        child: Column(
                          children: <Widget>[
                            Text('Hoje'),
                            Text('Casos'),
                            Text(model.todayCases.toString()),
                            Text('Óbitos'),
                            Text(model.todayDeaths.toString())
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    ),
                    Card(
                      color: Colors.green,
                      child: Container(
                        padding: EdgeInsets.all(32.0),
                        child: Column(
                          children: <Widget>[
                            Text('Testes'),
                            Text('Realizados'),
                            Text(model.tests.toString()),
                            Text('Populção'),
                            Text(model.population.toString()),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    ),
                  ],
                ),
              ),

              /////////// container paises
              Container(child: Center(child: Text("Some boots"))),
            ],
          ),
        ),
      ),
    );
  }
}
