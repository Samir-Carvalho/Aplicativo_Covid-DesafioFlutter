import 'package:app_covid_samir/model/model_get_countries.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetListCountries extends StatelessWidget {
  final ModelCountrie model;
  const WidgetListCountries({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('entrou no list countries retornando o brazil');
    print(model.country + ': return ');
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('stringCountrie' + model.country),
      )),
    );
    /*
    if (model.country == "Brazil") {
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
    */
  }
}
//
