import 'package:app_covid_samir/model/model_api.dart';
import 'package:app_covid_samir/widgets/countries_details_page.dart';
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
          color: Color(0XFFECEFF1),
          child: Column(
            children: <Widget>[
              Card(
                color: Colors.green,
                elevation: 12,
                child: Container(
                  padding: EdgeInsets.all(200.0),
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
                padding: EdgeInsets.only(top: 100.0, bottom: 1.0),
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
    int sizcountries = model.countries.length;
    int numItems = sizcountries - 1;
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

              Container(
                child: ListeeCountriePage(model: model),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListeeCountriePage extends StatelessWidget {
  final ToModel model;
  const ListeeCountriePage({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int sizcountries = model.countries.length;

    int numItems = sizcountries - 1;

    Widget _buildRow(int idx) {
      return ListTile(
        onTap: () {
          Navigator.of(context).push(CupertinoPageRoute<void>(
            //title: (model.countries[idx]), //titulo da proxima pagina
            builder: (context) => //ContinentCountriesPage(
                CountriesDetailsPage(
                    tomodel: model, country: model.countries[idx]),
          ));
        },
        title: Text(model.countries[idx],
            style: TextStyle(
              fontFamily: 'Ubuntu-Regular',
              fontSize: 15.0,
            )),
        trailing: Image.asset('assets/images/SmallArrowFw.png'),
      );
    }

    return ListView.builder(
      itemCount: numItems * 2,
      itemBuilder: (BuildContext context, int i) {
        if (i.isOdd) return const Divider();
        final index = i ~/ 2 + 1;
        return _buildRow(index);
      },
    );
  }
}
