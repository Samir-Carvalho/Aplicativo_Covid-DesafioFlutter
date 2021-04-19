import 'package:app_covid_samir/model/model_api.dart';
import 'package:app_covid_samir/pages/country_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListCountriePage extends StatelessWidget {
  final ToModel model;
  const ListCountriePage({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int sizcountries = model.countries.length;

    int numItems = sizcountries - 1;

    Widget _buildRow(int idx) {
      return Card(
        elevation: 12,
        margin: EdgeInsets.only(left: 16, right: 20, bottom: 4, top: 8),
        child: ListTile(
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
        ),
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
