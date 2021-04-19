import 'package:app_covid_samir/model/model_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContinentCountriesPage extends StatelessWidget {
  final ToModel model;
  const ContinentCountriesPage({Key key, @required this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(model.countries);

    return Scaffold(
      appBar: AppBar(
          title: Text(model.continent,
              style: TextStyle(
                fontFamily: 'Ubuntu-Bold',
                fontSize: 16,
              ))),
      body: ListCountriePage(model: model),
    );
  }
}

class ListCountriePage extends StatelessWidget {
  final ToModel model;
  const ListCountriePage({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int sizcountries = model.countries.length;

    int numItems = sizcountries - 1;

    Widget _buildRow(int idx) {
      return ListTile(
        onTap: () {
          Navigator.pushNamed(
            context,
            '/countries_datails',
            arguments: model.countries[idx],
          );
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
