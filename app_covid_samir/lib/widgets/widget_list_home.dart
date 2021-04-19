import 'package:app_covid_samir/model/model_api.dart';
import 'package:app_covid_samir/pages/continent_details_page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetListHome extends StatelessWidget {
  final ToModel model;
  const WidgetListHome({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int population = model.Population();

    print(model.continent);

    return Card(
      elevation: 12,
      margin: EdgeInsets.only(left: 16, right: 20, bottom: 4, top: 8),
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(CupertinoPageRoute<void>(
            title: (model.continent),
            builder: (context) => ContinentDetailsPage(
              model: model,
            ),
          ));
        },
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 12.0,
        ),
        title: Text(
          model.continent,
          style: TextStyle(
            fontSize: 13.0,
            fontFamily: 'Ubuntu-Regular',
          ),
        ),
        subtitle: Text(
          '$population paises',
          style: TextStyle(
            fontSize: 12.0,
            fontFamily: 'Ubuntu-Regular',
          ),
        ),
        leading: Image.asset(
          'assets/images/' + model.continent + '.png',
          width: 44,
        ),
        trailing: Image.asset('assets/images/SmallArrowFw.png'),
      ),
    );
  }
}
